import 'package:flutter_realm_music/entity/i_album.dart';
import 'package:flutter_realm_music/entity/i_artist.dart';
import 'package:flutter_realm_music/main.dart';
import 'package:flutter_realm_music/object/object.dart';
import 'package:flutter_realm_music/repository/album_repository.dart';
import 'package:flutter_realm_music/repository/artist_repository.dart';
import 'package:realm/realm.dart';

import '../entity/i_song.dart';

class SongRepository {
  static final SongRepository instance = SongRepository._privateConstructor();

  SongRepository._privateConstructor();

  ///保存歌曲 需要在realm事务内部
  void saveSongs(List<ISong> songs) {
    for (var song in songs) {
      final albumObject = AlbumRepository.convert(song.album);
      realm.add(albumObject);
      if (!albumObject.songs.map((e) => e.id).contains(song.songId)) {
        albumObject.songs.add(convert(song));
      }

      for (var artist in song.artists) {
        final artistObject = ArtistRepository.convert(artist);
        realm.add(artistObject);
        if (!artistObject.songs.map((e) => e.id).contains(song.songId)) {
          artistObject.songs.add(convert(song));
        }
      }
    }
  }

  ///保存每日推荐歌曲
  void saveRecommendSongs(List<ISong> songs) {
    realm.write(() {
      realm.deleteAll<RecommendSongsObject>();

      saveSongs(songs);

      final object =
          RecommendSongsObject(ObjectId(), songs: songs.map((e) => convert(e)));

      realm.add(object);
    });
  }

  static SongObject convert(ISong song) {
    final target = realm.find<SongObject>(song.songId);
    if (target == null) {
      return SongObject(song.songId, song.songName, song.songMv);
    } else {
      target.name = song.songName;
      target.mv = song.songMv;
      return target;
    }
  }
}
