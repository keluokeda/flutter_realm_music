import 'package:flutter_realm_music/entity/i_artist.dart';
import 'package:flutter_realm_music/object/object.dart';

class ArtistEntity extends IArtist {
  final int id;
  final String name;
  final String? avatar;

  ArtistEntity(this.id, this.name, this.avatar);

  factory ArtistEntity.fromObject(ArtistObject object) {
    return ArtistEntity(object.id, object.name, object.avatar);
  }

  @override
  int get artistId => id;

  @override
  String get artistName => name;

  @override
  String? get artistAvatar => avatar;
}
