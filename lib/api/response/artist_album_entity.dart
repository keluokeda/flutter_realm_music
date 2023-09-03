import 'package:flutter_realm_music/entity/i_album.dart';
import 'package:flutter_realm_music/generated/json/base/json_field.dart';
import 'package:flutter_realm_music/generated/json/artist_album_entity.g.dart';
import 'dart:convert';
export 'package:flutter_realm_music/generated/json/artist_album_entity.g.dart';

@JsonSerializable()
class ArtistAlbumEntity {
  ArtistAlbumArtist? artist;
  List<ArtistAlbumHotAlbums>? hotAlbums;
  bool? more;
  int? code;

  ArtistAlbumEntity();

  factory ArtistAlbumEntity.fromJson(Map<String, dynamic> json) =>
      $ArtistAlbumEntityFromJson(json);

  Map<String, dynamic> toJson() => $ArtistAlbumEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistAlbumArtist {
  int? img1v1Id;
  int? topicPerson;
  bool? followed;
  List<String>? alias;
  int? picId;
  String? briefDesc;
  int? musicSize;
  int? albumSize;
  String? picUrl;
  String? img1v1Url;
  String? trans;
  String? name;
  int? id;
  @JSONField(name: "picId_str")
  String? picidStr;
  @JSONField(name: "img1v1Id_str")
  String? img1v1idStr;

  ArtistAlbumArtist();

  factory ArtistAlbumArtist.fromJson(Map<String, dynamic> json) =>
      $ArtistAlbumArtistFromJson(json);

  Map<String, dynamic> toJson() => $ArtistAlbumArtistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistAlbumHotAlbums extends IAlbum {
  List<dynamic>? songs;
  bool? paid;
  bool? onSale;
  int? mark;
  dynamic awardTags;
  int? companyId;
  String? blurPicUrl;
  List<dynamic>? alias;
  List<ArtistAlbumHotAlbumsArtists>? artists;
  int? copyrightId;
  int? picId;
  ArtistAlbumHotAlbumsArtist? artist;
  String? briefDesc;
  int? publishTime;
  String? company;
  String? picUrl;
  String? commentThreadId;
  int? pic;
  String? description;
  String? tags;
  int? status;
  String? subType;
  String? name;
  int? id;
  String? type;
  int? size;
  @JSONField(name: "picId_str")
  String? picidStr;
  bool? isSub;

  ArtistAlbumHotAlbums();

  factory ArtistAlbumHotAlbums.fromJson(Map<String, dynamic> json) =>
      $ArtistAlbumHotAlbumsFromJson(json);

  Map<String, dynamic> toJson() => $ArtistAlbumHotAlbumsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  int get albumId => id!;

  @override
  String get albumImage => picUrl!;

  @override
  String get albumName => name!;
}

@JsonSerializable()
class ArtistAlbumHotAlbumsArtists {
  int? img1v1Id;
  int? topicPerson;
  bool? followed;
  List<dynamic>? alias;
  int? picId;
  String? briefDesc;
  int? musicSize;
  int? albumSize;
  String? picUrl;
  String? img1v1Url;
  String? trans;
  String? name;
  int? id;
  @JSONField(name: "img1v1Id_str")
  String? img1v1idStr;

  ArtistAlbumHotAlbumsArtists();

  factory ArtistAlbumHotAlbumsArtists.fromJson(Map<String, dynamic> json) =>
      $ArtistAlbumHotAlbumsArtistsFromJson(json);

  Map<String, dynamic> toJson() => $ArtistAlbumHotAlbumsArtistsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistAlbumHotAlbumsArtist {
  int? img1v1Id;
  int? topicPerson;
  bool? followed;
  List<String>? alias;
  int? picId;
  String? briefDesc;
  int? musicSize;
  int? albumSize;
  String? picUrl;
  String? img1v1Url;
  String? trans;
  String? name;
  int? id;
  @JSONField(name: "picId_str")
  String? picidStr;
  @JSONField(name: "img1v1Id_str")
  String? img1v1idStr;

  ArtistAlbumHotAlbumsArtist();

  factory ArtistAlbumHotAlbumsArtist.fromJson(Map<String, dynamic> json) =>
      $ArtistAlbumHotAlbumsArtistFromJson(json);

  Map<String, dynamic> toJson() => $ArtistAlbumHotAlbumsArtistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
