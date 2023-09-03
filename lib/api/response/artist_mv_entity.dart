import 'package:flutter_realm_music/entity/i_mv.dart';
import 'package:flutter_realm_music/generated/json/base/json_field.dart';
import 'package:flutter_realm_music/generated/json/artist_mv_entity.g.dart';
import 'dart:convert';
export 'package:flutter_realm_music/generated/json/artist_mv_entity.g.dart';

@JsonSerializable()
class ArtistMvEntity {
  List<ArtistMvMvs>? mvs;
  int? time;
  bool? hasMore;
  int? code;

  ArtistMvEntity();

  factory ArtistMvEntity.fromJson(Map<String, dynamic> json) =>
      $ArtistMvEntityFromJson(json);

  Map<String, dynamic> toJson() => $ArtistMvEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistMvMvs extends IMv {
  int? id;
  String? name;
  int? status;
  ArtistMvMvsArtist? artist;
  String? imgurl;
  String? imgurl16v9;
  String? artistName;
  int? duration;
  int? playCount;
  String? publishTime;
  bool? subed;

  ArtistMvMvs();

  factory ArtistMvMvs.fromJson(Map<String, dynamic> json) =>
      $ArtistMvMvsFromJson(json);

  Map<String, dynamic> toJson() => $ArtistMvMvsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  String get mvArtistName => artistName!;

  @override
  String get mvDuration => '${duration! / 1000 / 60}:${duration! / 1000 % 60}}';

  @override
  int get mvId => id!;

  @override
  String get mvImage => imgurl16v9!;

  @override
  String get mvName => name!;

  @override
  int get mvPlayCount => playCount!;
}

@JsonSerializable()
class ArtistMvMvsArtist {
  int? img1v1Id;
  int? topicPerson;
  int? musicSize;
  String? briefDesc;
  String? picUrl;
  String? img1v1Url;
  int? albumSize;
  String? trans;
  List<dynamic>? alias;
  int? picId;
  String? name;
  int? id;
  @JSONField(name: "img1v1Id_str")
  String? img1v1idStr;

  ArtistMvMvsArtist();

  factory ArtistMvMvsArtist.fromJson(Map<String, dynamic> json) =>
      $ArtistMvMvsArtistFromJson(json);

  Map<String, dynamic> toJson() => $ArtistMvMvsArtistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
