import 'package:flutter_realm_music/entity/i_album.dart';
import 'package:flutter_realm_music/entity/i_artist.dart';
import 'package:flutter_realm_music/entity/i_song.dart';
import 'package:flutter_realm_music/generated/json/base/json_field.dart';
import 'package:flutter_realm_music/generated/json/artist_detail_entity.g.dart';
import 'dart:convert';
export 'package:flutter_realm_music/generated/json/artist_detail_entity.g.dart';

@JsonSerializable()
class ArtistDetailEntity {
  ArtistDetailArtist? artist;
  List<ArtistDetailHotSongs>? hotSongs;
  bool? more;
  int? code;

  ArtistDetailEntity();

  factory ArtistDetailEntity.fromJson(Map<String, dynamic> json) =>
      $ArtistDetailEntityFromJson(json);

  Map<String, dynamic> toJson() => $ArtistDetailEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistDetailArtist extends IArtist {
  int? img1v1Id;
  int? topicPerson;
  bool? followed;
  List<String>? alias;
  int? picId;
  int? musicSize;
  int? albumSize;
  String? briefDesc;
  String? picUrl;
  String? img1v1Url;
  String? trans;
  String? name;
  int? id;
  int? publishTime;
  @JSONField(name: "picId_str")
  String? picidStr;
  @JSONField(name: "img1v1Id_str")
  String? img1v1idStr;
  int? mvSize;

  ArtistDetailArtist();

  factory ArtistDetailArtist.fromJson(Map<String, dynamic> json) =>
      $ArtistDetailArtistFromJson(json);

  Map<String, dynamic> toJson() => $ArtistDetailArtistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  String? get artistAvatar => img1v1Url;

  @override
  int get artistId => id!;

  @override
  String get artistName => name!;
}

@JsonSerializable()
class ArtistDetailHotSongs extends ISong {
  List<dynamic>? rtUrls;
  List<ArtistDetailHotSongsAr>? ar;
  ArtistDetailHotSongsAl? al;
  int? st;
  dynamic noCopyrightRcmd;
  dynamic songJumpInfo;
  dynamic rurl;
  int? pst;
  List<dynamic>? alia;
  int? pop;
  String? rt;
  int? mst;
  int? cp;
  dynamic crbt;
  String? cf;
  int? dt;
  ArtistDetailHotSongsH? h;
  ArtistDetailHotSongsSq? sq;
  ArtistDetailHotSongsHr? hr;
  ArtistDetailHotSongsL? l;
  dynamic rtUrl;
  int? ftype;
  int? rtype;
  int? djId;
  int? no;
  int? fee;
  int? mv;
  int? t;
  int? v;
  String? cd;
  dynamic a;
  ArtistDetailHotSongsM? m;
  String? name;
  int? id;
  ArtistDetailHotSongsPrivilege? privilege;
  List<String>? tns;
  String? eq;

  ArtistDetailHotSongs();

  factory ArtistDetailHotSongs.fromJson(Map<String, dynamic> json) =>
      $ArtistDetailHotSongsFromJson(json);

  Map<String, dynamic> toJson() => $ArtistDetailHotSongsToJson(this);

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
class ArtistDetailHotSongsAr extends IArtist {
  int? id;
  String? name;
  List<String>? alia;

  ArtistDetailHotSongsAr();

  factory ArtistDetailHotSongsAr.fromJson(Map<String, dynamic> json) =>
      $ArtistDetailHotSongsArFromJson(json);

  Map<String, dynamic> toJson() => $ArtistDetailHotSongsArToJson(this);

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
class ArtistDetailHotSongsAl extends IAlbum {
  int? id;
  String? name;
  String? picUrl;
  @JSONField(name: "pic_str")
  String? picStr;
  int? pic;

  ArtistDetailHotSongsAl();

  factory ArtistDetailHotSongsAl.fromJson(Map<String, dynamic> json) =>
      $ArtistDetailHotSongsAlFromJson(json);

  Map<String, dynamic> toJson() => $ArtistDetailHotSongsAlToJson(this);

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
class ArtistDetailHotSongsH {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  ArtistDetailHotSongsH();

  factory ArtistDetailHotSongsH.fromJson(Map<String, dynamic> json) =>
      $ArtistDetailHotSongsHFromJson(json);

  Map<String, dynamic> toJson() => $ArtistDetailHotSongsHToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistDetailHotSongsSq {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  ArtistDetailHotSongsSq();

  factory ArtistDetailHotSongsSq.fromJson(Map<String, dynamic> json) =>
      $ArtistDetailHotSongsSqFromJson(json);

  Map<String, dynamic> toJson() => $ArtistDetailHotSongsSqToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistDetailHotSongsHr {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  ArtistDetailHotSongsHr();

  factory ArtistDetailHotSongsHr.fromJson(Map<String, dynamic> json) =>
      $ArtistDetailHotSongsHrFromJson(json);

  Map<String, dynamic> toJson() => $ArtistDetailHotSongsHrToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistDetailHotSongsL {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  ArtistDetailHotSongsL();

  factory ArtistDetailHotSongsL.fromJson(Map<String, dynamic> json) =>
      $ArtistDetailHotSongsLFromJson(json);

  Map<String, dynamic> toJson() => $ArtistDetailHotSongsLToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistDetailHotSongsM {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  ArtistDetailHotSongsM();

  factory ArtistDetailHotSongsM.fromJson(Map<String, dynamic> json) =>
      $ArtistDetailHotSongsMFromJson(json);

  Map<String, dynamic> toJson() => $ArtistDetailHotSongsMToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistDetailHotSongsPrivilege {
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
  ArtistDetailHotSongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege;
  List<ArtistDetailHotSongsPrivilegeChargeInfoList>? chargeInfoList;

  ArtistDetailHotSongsPrivilege();

  factory ArtistDetailHotSongsPrivilege.fromJson(Map<String, dynamic> json) =>
      $ArtistDetailHotSongsPrivilegeFromJson(json);

  Map<String, dynamic> toJson() => $ArtistDetailHotSongsPrivilegeToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistDetailHotSongsPrivilegeFreeTrialPrivilege {
  bool? resConsumable;
  bool? userConsumable;
  dynamic listenType;

  ArtistDetailHotSongsPrivilegeFreeTrialPrivilege();

  factory ArtistDetailHotSongsPrivilegeFreeTrialPrivilege.fromJson(
          Map<String, dynamic> json) =>
      $ArtistDetailHotSongsPrivilegeFreeTrialPrivilegeFromJson(json);

  Map<String, dynamic> toJson() =>
      $ArtistDetailHotSongsPrivilegeFreeTrialPrivilegeToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistDetailHotSongsPrivilegeChargeInfoList {
  int? rate;
  dynamic chargeUrl;
  dynamic chargeMessage;
  int? chargeType;

  ArtistDetailHotSongsPrivilegeChargeInfoList();

  factory ArtistDetailHotSongsPrivilegeChargeInfoList.fromJson(
          Map<String, dynamic> json) =>
      $ArtistDetailHotSongsPrivilegeChargeInfoListFromJson(json);

  Map<String, dynamic> toJson() =>
      $ArtistDetailHotSongsPrivilegeChargeInfoListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
