import 'package:flutter_realm_music/entity/i_album.dart';
import 'package:flutter_realm_music/object/object.dart';

class AlbumEntity extends IAlbum {
  final int id;
  final String name;
  final String image;

  AlbumEntity(this.id, this.name, this.image);

  factory AlbumEntity.fromObject(AlbumObject albumObject) {
    return AlbumEntity(albumObject.id, albumObject.name, albumObject.image);
  }

  @override
  int get albumId => id;

  @override
  String get albumImage => image;

  @override
  String get albumName => name;
}
