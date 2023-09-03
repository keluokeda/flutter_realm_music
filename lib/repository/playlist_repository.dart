import 'package:flutter_realm_music/entity/i_playlist.dart';
import 'package:flutter_realm_music/main.dart';
import 'package:flutter_realm_music/object/object.dart';
import 'package:flutter_realm_music/repository/song_repository.dart';
import 'package:flutter_realm_music/repository/user_repository.dart';

import '../entity/i_song.dart';

class PlaylistRepository {
  static final PlaylistRepository instance =
      PlaylistRepository._privateConstructor();

  ///保存用户歌单
  void saveUserPlaylists(int userId, List<IPlaylist> playlists) {
    realm.write(() {
      final userObject = realm.find<UserObject>(userId);
      if (userObject == null) {
        throw "没有正确写入用户 $userId";
      }
      userObject.playlists.clear();
      for (var element in playlists) {
        userObject.playlists.add(PlaylistRepository.convert(element));
      }
    });
  }

  ///保存歌单歌曲
  void savePlaylistSongs(List<ISong> songs, IPlaylist playlist) {
    realm.write(() {
      final playlistObject = convert(playlist);
      realm.add(playlistObject, update: true);
      playlistObject.songs.clear();
      playlistObject.songs.addAll(songs.map((e) => SongRepository.convert(e)));
    });
  }

  PlaylistRepository._privateConstructor();

  static PlaylistObject convert(IPlaylist playlist) {
    var target = realm.find<PlaylistObject>(playlist.playlistId);
    if (target == null) {
      return PlaylistObject(
          playlist.playlistId, playlist.playlistName, playlist.playlistImage,
          creator: UserRepository.convert(playlist.creatorUser));
    } else {
      target.name = playlist.playlistName;
      target.image = playlist.playlistImage;
      target.creator = UserRepository.convert(playlist.creatorUser);

      return target;
    }
  }
}
