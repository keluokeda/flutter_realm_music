import 'package:flutter_realm_music/entity/i_album.dart';
import 'package:flutter_realm_music/entity/i_artist.dart';
import 'package:flutter_realm_music/entity/i_song.dart';
import 'package:flutter_realm_music/generated/json/base/json_field.dart';
import 'package:flutter_realm_music/generated/json/playlist_tracks_entity.g.dart';
import 'dart:convert';
export 'package:flutter_realm_music/generated/json/playlist_tracks_entity.g.dart';

@JsonSerializable()
class PlaylistTracksEntity {
  List<PlaylistTracksSongs>? songs;
  List<PlaylistTracksPrivileges>? privileges;
  int? code;

  PlaylistTracksEntity();

  factory PlaylistTracksEntity.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksEntityFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistTracksSongs extends ISong {
  String? name;
  int? id;
  int? pst;
  int? t;
  List<PlaylistTracksSongsAr>? ar;
  List<dynamic>? alia;
  int? pop;
  int? st;
  String? rt;
  int? fee;
  int? v;
  dynamic crbt;
  String? cf;
  PlaylistTracksSongsAl? al;
  int? dt;
  PlaylistTracksSongsH? h;
  PlaylistTracksSongsM? m;
  PlaylistTracksSongsL? l;
  PlaylistTracksSongsSq? sq;
  PlaylistTracksSongsHr? hr;
  dynamic a;
  String? cd;
  int? no;
  dynamic rtUrl;
  int? ftype;
  List<dynamic>? rtUrls;
  int? djId;
  int? copyright;
  @JSONField(name: "s_id")
  int? sId;
  int? mark;
  int? originCoverType;
  dynamic originSongSimpleData;
  dynamic tagPicList;
  bool? resourceState;
  int? version;
  dynamic songJumpInfo;
  dynamic entertainmentTags;
  dynamic awardTags;
  int? single;
  dynamic noCopyrightRcmd;
  int? rtype;
  dynamic rurl;
  int? mst;
  int? cp;
  int? mv;
  int? publishTime;
  List<String>? tns;

  PlaylistTracksSongs();

  factory PlaylistTracksSongs.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksSongsFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksSongsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  IAlbum get album => al!;

  @override
  List<IArtist> get artists => ar ?? [];

  @override
  int get songId => id!;

  @override
  int get songMv => mv!;

  @override
  String get songName => name!;
}

@JsonSerializable()
class PlaylistTracksSongsAr extends IArtist {
  int? id;
  String? name;
  List<dynamic>? tns;
  List<dynamic>? alias;

  PlaylistTracksSongsAr();

  factory PlaylistTracksSongsAr.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksSongsArFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksSongsArToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  String? get artistAvatar => null;

  @override
  int get artistId => id!;

  @override
  String get artistName => name!;
}

@JsonSerializable()
class PlaylistTracksSongsAl extends IAlbum {
  int? id;
  String? name;
  String? picUrl;
  List<dynamic>? tns;
  @JSONField(name: "pic_str")
  String? picStr;
  int? pic;

  PlaylistTracksSongsAl();

  factory PlaylistTracksSongsAl.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksSongsAlFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksSongsAlToJson(this);

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
class PlaylistTracksSongsH {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  PlaylistTracksSongsH();

  factory PlaylistTracksSongsH.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksSongsHFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksSongsHToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistTracksSongsM {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  PlaylistTracksSongsM();

  factory PlaylistTracksSongsM.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksSongsMFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksSongsMToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistTracksSongsL {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  PlaylistTracksSongsL();

  factory PlaylistTracksSongsL.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksSongsLFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksSongsLToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistTracksSongsSq {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  PlaylistTracksSongsSq();

  factory PlaylistTracksSongsSq.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksSongsSqFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksSongsSqToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistTracksSongsHr {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  PlaylistTracksSongsHr();

  factory PlaylistTracksSongsHr.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksSongsHrFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksSongsHrToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistTracksPrivileges {
  int? id;
  int? fee;
  int? payed;
  int? st;
  int? pl;
  int? dl;
  int? sp;
  int? cp;
  int? subp;
  bool? cs;
  int? maxbr;
  int? fl;
  bool? toast;
  int? flag;
  bool? preSell;
  int? playMaxbr;
  int? downloadMaxbr;
  String? maxBrLevel;
  String? playMaxBrLevel;
  String? downloadMaxBrLevel;
  String? plLevel;
  String? dlLevel;
  String? flLevel;
  dynamic rscl;
  PlaylistTracksPrivilegesFreeTrialPrivilege? freeTrialPrivilege;
  List<PlaylistTracksPrivilegesChargeInfoList>? chargeInfoList;

  PlaylistTracksPrivileges();

  factory PlaylistTracksPrivileges.fromJson(Map<String, dynamic> json) =>
      $PlaylistTracksPrivilegesFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistTracksPrivilegesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistTracksPrivilegesFreeTrialPrivilege {
  bool? resConsumable;
  bool? userConsumable;
  dynamic listenType;

  PlaylistTracksPrivilegesFreeTrialPrivilege();

  factory PlaylistTracksPrivilegesFreeTrialPrivilege.fromJson(
          Map<String, dynamic> json) =>
      $PlaylistTracksPrivilegesFreeTrialPrivilegeFromJson(json);

  Map<String, dynamic> toJson() =>
      $PlaylistTracksPrivilegesFreeTrialPrivilegeToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistTracksPrivilegesChargeInfoList {
  int? rate;
  dynamic chargeUrl;
  dynamic chargeMessage;
  int? chargeType;

  PlaylistTracksPrivilegesChargeInfoList();

  factory PlaylistTracksPrivilegesChargeInfoList.fromJson(
          Map<String, dynamic> json) =>
      $PlaylistTracksPrivilegesChargeInfoListFromJson(json);

  Map<String, dynamic> toJson() =>
      $PlaylistTracksPrivilegesChargeInfoListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
