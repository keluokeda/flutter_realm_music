import 'package:flutter_realm_music/entity/album_entity.dart';
import 'package:flutter_realm_music/entity/song_entity.dart';
import 'package:flutter_realm_music/main.dart';
import 'package:flutter_realm_music/object/object.dart';
import 'package:flutter_realm_music/pages/base_view_model.dart';
import 'package:flutter_realm_music/repository/album_repository.dart';
import 'package:flutter_realm_music/repository/song_repository.dart';

import '../../api/http_service.dart';
import '../../entity/i_song_entity.dart';

class AlbumDetailViewModel extends BaseViewModel {
  final int albumId;

  AlbumEntity? _album;

  AlbumEntity? get album => _album;

  List<ISongEntity> _songs = [];

  List<ISongEntity> get songs => _songs;

  bool? _followed;

  bool? get isFollowed => _followed;

  AlbumDetailViewModel(this.albumId) {
    final albumObject = realm.find<AlbumObject>(albumId);

    _observeObject(albumObject);

    _loadData(albumObject != null);
  }

  void _observeObject(AlbumObject? albumObject) {
    if (albumObject != null) {
      _onAlbumUpdated(albumObject);
      final token = albumObject.changes.listen((event) {
        _onAlbumUpdated(albumObject);
      });
      addStreamSubscription(token);
    }
  }

  _onAlbumUpdated(AlbumObject albumObject) {
    _album = AlbumEntity.fromObject(albumObject);
    _songs = albumObject.songs.map((e) => SongEntity.fromObject(e)).toList();

    _followed = albumObject.subscribers
        .contains(realm.find<UserObject>(HttpService.instance.getUserId()!));
    notifyListeners();
  }

  void _loadData(bool observed) async {
    final albumJson = await HttpService.instance.albumDetail(albumId);
    final followed = await HttpService.instance.isUserFollowAlbum(albumId);
    if (albumJson == null) {
      return;
    }

    realm.write(() {
      SongRepository.instance.saveSongs(albumJson.songs ?? []);
    });

    AlbumRepository.instance
        .saveAlbum(albumJson.album!, albumJson.songs!, followed);

    if (!observed) {
      final albumObject = realm.find<AlbumObject>(albumId);
      _observeObject(albumObject);
    }
  }

  void toggleFollow() {}
}
