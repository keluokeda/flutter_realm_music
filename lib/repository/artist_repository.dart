import 'package:flutter_realm_music/api/response/artist_desc_entity.dart';
import 'package:flutter_realm_music/api/response/artist_detail_entity.dart';
import 'package:flutter_realm_music/entity/i_artist.dart';
import 'package:flutter_realm_music/main.dart';
import 'package:flutter_realm_music/object/object.dart';
import 'package:flutter_realm_music/repository/song_repository.dart';

import '../entity/i_album.dart';
import '../entity/i_mv.dart';
import 'album_repository.dart';
import 'mv_repository.dart';

class ArtistRepository {
  static final ArtistRepository instance =
      ArtistRepository._privateConstructor();

  ArtistRepository._privateConstructor();

  void saveArtistDetail(ArtistDetailEntity entity) {
    realm.write(() {
      final artistObject = convert(entity.artist!);
      realm.add(artistObject, update: true);
      artistObject.songs.clear();
      artistObject.songs
          .addAll(entity.hotSongs!.map((e) => SongRepository.convert(e)));
    });
  }

  void saveArtistDesc(ArtistDescEntity artistDescEntity, int artistId) {
    final artistObject = realm.find<ArtistObject>(artistId);
    if (artistObject == null) {
      return;
    }
    realm.write(() {
      artistObject.descList.clear();
      artistObject.descList
          .add(ArtistDescObject('简介', artistDescEntity.briefDesc!));
      artistObject.descList.addAll(artistDescEntity.introduction!
          .map((e) => ArtistDescObject(e.ti!, e.txt!)));
    });
  }

  void saveArtistAlbums(List<IAlbum> albums, int artistId) {
    final artistObject = realm.find<ArtistObject>(artistId);
    if (artistObject == null) {
      return;
    }
    realm.write(() {
      artistObject.albums.clear();
      artistObject.albums.addAll(albums.map((e) => AlbumRepository.convert(e)));
    });
  }

  void saveArtistMvs(int artistId, List<IMv> mvs) {
    final artistObject = realm.find<ArtistObject>(artistId);
    if (artistObject == null) {
      return;
    }
    realm.write(() {
      artistObject.mvs.clear();
      artistObject.mvs.addAll(mvs.map((e) => MvRepository.convert(e)));
    });
  }

  static ArtistObject convert(IArtist artist) {
    final target = realm.find<ArtistObject>(artist.artistId);

    if (target == null) {
      return ArtistObject(artist.artistId, artist.artistName,
          avatar: artist.artistAvatar);
    } else {
      target.name = artist.artistName;
      //防止空的数据覆盖非空的数据
      if (artist.artistAvatar != null) target.avatar = artist.artistAvatar;
      return target;
    }
  }
}
