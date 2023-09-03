import 'package:flutter_realm_music/entity/i_album.dart';

import 'i_artist.dart';

abstract class ISong {
  int get songId;

  String get songName;

  int get songMv;

  IAlbum get album;

  List<IArtist> get artists;
}
