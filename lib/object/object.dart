import 'package:flutter_realm_music/entity/download_status.dart';
import 'package:realm/realm.dart';

part 'object.g.dart';

@RealmModel()
class _RecommendSongsObject {
  @PrimaryKey()
  late ObjectId id;
  late List<_SongObject> songs;
}

@RealmModel()
class _SongObject {
  @PrimaryKey()
  late int id;
  late String name;
  late int mv;

  late _DownloadInfo? downloadInfo;

  @Backlink(#songs)
  late Iterable<_AlbumObject> albums;

  @Backlink(#songs)
  late Iterable<_ArtistObject> artists;
}

@RealmModel(ObjectType.embeddedObject)
class _DownloadInfo {
  late int status;
  late String? path;

  void setDownloadStatus(DownloadStatus downloadStatus) {
    status = DownloadStatus.values.indexOf(downloadStatus);
  }

  DownloadStatus getDownloadStatus() {
    return DownloadStatus.values[status];
  }
}

@RealmModel()
class _ArtistObject {
  @PrimaryKey()
  late int id;
  late String name;
  late String? avatar;

  late List<_SongObject> songs;

  late List<_ArtistDescObject> descList;

  late List<_AlbumObject> albums;

  late List<_MvObject> mvs;
}

@RealmModel(ObjectType.embeddedObject)
class _ArtistDescObject {
  late String title;
  late String text;
}

@RealmModel()
class _MvObject {
  @PrimaryKey()
  late int id;
  late String name;
  late String image;
  late int playCount;
  late String duration;
  late String artistName;
}

@RealmModel()
class _AlbumObject {
  @PrimaryKey()
  late int id;
  late String name;
  late String image;
  late String? description;

  late List<_SongObject> songs;

  ///关注者
  late List<_UserObject> subscribers;
}

@RealmModel()
class _UserObject {
  @PrimaryKey()
  late int id;
  late String name;
  late String avatar;
  late String signature;

  ///用户歌单
  late List<_PlaylistObject> playlists;
}

@RealmModel()
class _PlaylistObject {
  @PrimaryKey()
  late int id;
  late String name;
  late String image;

  ///创建者
  late _UserObject? creator;

  late List<_SongObject> songs;
}
