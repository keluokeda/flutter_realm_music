import 'package:flutter_realm_music/api/http_service.dart';
import 'package:flutter_realm_music/api/response/artist_desc_entity.dart';
import 'package:flutter_realm_music/entity/album_entity.dart';
import 'package:flutter_realm_music/entity/artist_entity.dart';
import 'package:flutter_realm_music/entity/i_song_entity.dart';
import 'package:flutter_realm_music/entity/song_entity.dart';
import 'package:flutter_realm_music/main.dart';
import 'package:flutter_realm_music/object/object.dart';
import 'package:flutter_realm_music/pages/base_view_model.dart';
import 'package:flutter_realm_music/repository/artist_repository.dart';
import 'package:flutter_realm_music/repository/mv_repository.dart';
import 'package:flutter_realm_music/repository/song_repository.dart';

import '../../entity/i_album.dart';
import '../../entity/i_artist.dart';
import '../../entity/i_mv.dart';
import '../../entity/mv_entity.dart';

class ArtistDetailViewModel extends BaseViewModel {
  final int artistId;

  IArtist? _artist;

  IArtist? get artist => _artist;

  List<ISongEntity> _hotSongs = [];

  List<ISongEntity> get hotSongs => _hotSongs;

  List<ArtistDescObject> _descList = [];

  List<ArtistDescObject> get descList => _descList;

  List<IAlbum> _albums = [];

  List<IAlbum> get albums => _albums;

  List<IMv> _mvs = [];

  List<IMv> get mvs => _mvs;

  ArtistDetailViewModel(this.artistId) {
    final artistObject = realm.find<ArtistObject>(artistId)!;

    _update(artistObject);

    final token = artistObject.changes.listen((event) {
      _update(artistObject);
    });
    addStreamSubscription(token);

    _loadData();
  }

  _loadData() async {
    final artistDetailEntity =
        await HttpService.instance.getArtistDetail(artistId);
    if (artistDetailEntity != null) {
      realm.write(() {
        SongRepository.instance.saveSongs(artistDetailEntity.hotSongs!);
      });
      ArtistRepository.instance.saveArtistDetail(artistDetailEntity);
    }
    final ArtistDescEntity? artistDescEntity =
        await HttpService.instance.getArtistDesc(artistId);
    if (artistDescEntity != null) {
      ArtistRepository.instance.saveArtistDesc(artistDescEntity, artistId);
    }

    final albums = await HttpService.instance.getArtistAlbums(artistId);
    ArtistRepository.instance.saveArtistAlbums(albums, artistId);

    final mvs = await HttpService.instance.getArtistMvs(artistId);
    MvRepository.instance.saveMvList(mvs);
    ArtistRepository.instance.saveArtistMvs(artistId, mvs);
  }

  void _update(ArtistObject artistObject) {
    _artist = ArtistEntity.fromObject(artistObject);
    _hotSongs =
        artistObject.songs.map((e) => SongEntity.fromObject(e)).toList();
    _descList = artistObject.descList;
    _albums =
        artistObject.albums.map((e) => AlbumEntity.fromObject(e)).toList();

    _mvs = artistObject.mvs.map((e) => MvEntity.fromObject(e)).toList();
    notifyListeners();
  }
}
