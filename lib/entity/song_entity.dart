import 'package:flutter_realm_music/entity/album_entity.dart';
import 'package:flutter_realm_music/entity/artist_entity.dart';
import 'package:flutter_realm_music/entity/download_status.dart';
import 'package:flutter_realm_music/entity/i_album.dart';
import 'package:flutter_realm_music/entity/i_song_entity.dart';
import 'package:flutter_realm_music/object/object.dart';

import 'i_artist.dart';

class SongEntity extends ISongEntity {
  final int id;
  final String name;
  final int mv;
  @override
  final IAlbum album;
  @override
  final List<IArtist> artists;
  @override
  final DownloadStatus downloadStatus;
  @override
  final String? path;

  SongEntity(this.id, this.name, this.mv, this.album, this.artists,
      this.downloadStatus, this.path);

  factory SongEntity.fromObject(SongObject songObject) {
    return SongEntity(
        songObject.id,
        songObject.name,
        songObject.mv,
        AlbumEntity.fromObject(songObject.albums.first),
        songObject.artists.map((e) => ArtistEntity.fromObject(e)).toList(),
        DownloadStatus.values[songObject.downloadInfo?.status ?? 0],
        songObject.downloadInfo?.path);
  }

  @override
  int get songId => id;

  @override
  int get songMv => mv;

  @override
  String get songName => name;
}
