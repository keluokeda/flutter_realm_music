import 'package:flutter_realm_music/entity/download_status.dart';

import 'i_song.dart';

abstract class ISongEntity extends ISong {
  DownloadStatus get downloadStatus;

  String? get path;

  String subtitle() {
    return '${artists.map((e) => e.artistName).join('/')}-${album.albumName}';
  }
}
