import 'package:flutter/foundation.dart';
import 'package:flutter_realm_music/api/http_service.dart';
import 'package:flutter_realm_music/entity/i_playlist.dart';
import 'package:flutter_realm_music/entity/playlist_entity.dart';
import 'package:flutter_realm_music/entity/song_entity.dart';
import 'package:flutter_realm_music/entity/user_playlist_relationship.dart';
import 'package:flutter_realm_music/main.dart';
import 'package:flutter_realm_music/object/object.dart';
import 'package:flutter_realm_music/pages/base_view_model.dart';
import 'package:flutter_realm_music/repository/playlist_repository.dart';
import 'package:flutter_realm_music/repository/song_repository.dart';
import 'package:flutter_realm_music/repository/user_repository.dart';

import '../../entity/i_song_entity.dart';

class PlaylistDetailViewModel extends BaseViewModel {
  UserPlaylistRelationship _relationship = UserPlaylistRelationship.none;

  UserPlaylistRelationship get relationship => _relationship;

  bool _loading = true;

  bool get loading => _loading;

  List<ISongEntity> _songs = [];

  List<ISongEntity> get songs => _songs;

  IPlaylist? _playlist;

  IPlaylist? get playlist => _playlist;

  final int id;

  PlaylistDetailViewModel(this.id) {
    _checkPlaylist();

    _loadData();
  }

  void _checkPlaylist() {
    final playlistObject = realm.find<PlaylistObject>(id);
    if (playlistObject != null) {
      //如果本地数据库有数据 就直接观察
      _onPlaylistUpdated(playlistObject);
      final token = playlistObject.changes.listen((event) {
        _onPlaylistUpdated(playlistObject);
      });

      addStreamSubscription(token);
    }
  }

  _loadData() async {
    final playlistJson = await HttpService.instance.playlistDetail(id);
    final songs = await HttpService.instance.playlistSongs(id);
    final followed = await HttpService.instance.isUserFollowPlaylist(id);

    final IPlaylist? playlist = playlistJson?.playlist;
    if (playlist != null) {
      realm.write(() {
        SongRepository.instance.saveSongs(songs);
      });
      PlaylistRepository.instance.savePlaylistSongs(songs, playlist);

      final newRelationship =
          playlist.creatorUser.id == HttpService.instance.getUserId()
              ? UserPlaylistRelationship.creator
              : followed
                  ? UserPlaylistRelationship.followed
                  : UserPlaylistRelationship.none;

      UserRepository.instance
          .savePlaylistRelationship(newRelationship, playlist);

      if (loading) {
        _checkPlaylist();
      }
    }
  }

  void _onPlaylistUpdated(PlaylistObject playlistObject) {
    _loading = false;
    _playlist = PlaylistEntity.fromObject(playlistObject);
    _songs = playlistObject.songs.map((e) => SongEntity.fromObject(e)).toList();
    final currentUser =
        realm.find<UserObject>(HttpService.instance.getUserId()!)!;
    final target =
        currentUser.playlists.where((element) => element.id == id).firstOrNull;

    if (target != null) {
      //创建或关注了歌单
      _relationship = target.creator?.id == currentUser.id
          ? UserPlaylistRelationship.creator
          : UserPlaylistRelationship.followed;
    } else {
      //用户和歌单之间没有任何关系
      _relationship = UserPlaylistRelationship.none;
    }

    notifyListeners();
  }
}
