import 'package:flutter_realm_music/api/http_service.dart';
import 'package:flutter_realm_music/api/response/album_detail_entity.dart';
import 'package:flutter_realm_music/entity/i_album.dart';
import 'package:flutter_realm_music/main.dart';
import 'package:flutter_realm_music/object/object.dart';
import 'package:flutter_realm_music/repository/song_repository.dart';

import '../entity/i_song.dart';

class AlbumRepository {
  static final AlbumRepository instance = AlbumRepository._privateConstructor();

  AlbumRepository._privateConstructor();

  void saveAlbum(AlbumDetailAlbum album, List<ISong> songs, bool followed) {
    realm.write(() {
      final object = convert(album);
      object.description = album.description;
      object.songs.clear();
      for (var element in songs) {
        object.songs.add(SongRepository.convert(element));
      }
      final currentUser =
      realm.find<UserObject>(HttpService.instance.getUserId()!)!;

      if (followed) {
        if (!object.subscribers.contains(currentUser)) {
          object.subscribers.add(currentUser);
        }
      } else {
        object.subscribers.remove(currentUser);
      }

      realm.add(object, update: true);
    });
  }

  static AlbumObject convert(IAlbum album) {
    return realm.find<AlbumObject>(album.albumId) ??
        AlbumObject(album.albumId, album.albumName, album.albumImage);
  }
}
