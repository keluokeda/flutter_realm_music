import 'package:flutter_realm_music/entity/i_album.dart';
import 'package:flutter_realm_music/entity/i_artist.dart';
import 'package:flutter_realm_music/entity/i_song.dart';
import 'package:flutter_realm_music/generated/json/base/json_field.dart';
import 'package:flutter_realm_music/generated/json/recommend_songs_entity.g.dart';
import 'dart:convert';
export 'package:flutter_realm_music/generated/json/recommend_songs_entity.g.dart';

@JsonSerializable()
class RecommendSongsEntity {
  int? code;
  RecommendSongsData? data;

  RecommendSongsEntity();

  factory RecommendSongsEntity.fromJson(Map<String, dynamic> json) =>
      $RecommendSongsEntityFromJson(json);

  Map<String, dynamic> toJson() => $RecommendSongsEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendSongsData {
  List<RecommendSongsDataDailySongs>? dailySongs;
  List<dynamic>? orderSongs;
  List<RecommendSongsDataRecommendReasons>? recommendReasons;
  dynamic mvResourceInfos;

  RecommendSongsData();

  factory RecommendSongsData.fromJson(Map<String, dynamic> json) =>
      $RecommendSongsDataFromJson(json);

  Map<String, dynamic> toJson() => $RecommendSongsDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendSongsDataDailySongs extends ISong {
  String? name;
  int? id;
  int? pst;
  int? t;
  List<RecommendSongsDataDailySongsAr>? ar;
  List<String>? alia;
  int? pop;
  int? st;
  String? rt;
  int? fee;
  int? v;
  dynamic crbt;
  String? cf;
  RecommendSongsDataDailySongsAl? al;
  int? dt;
  RecommendSongsDataDailySongsH? h;
  RecommendSongsDataDailySongsM? m;
  RecommendSongsDataDailySongsL? l;
  RecommendSongsDataDailySongsSq? sq;
  RecommendSongsDataDailySongsHr? hr;
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
  int? single;
  dynamic noCopyrightRcmd;
  int? rtype;
  dynamic rurl;
  int? mst;
  int? cp;
  int? mv;
  int? publishTime;
  String? reason;
  String? recommendReason;
  RecommendSongsDataDailySongsPrivilege? privilege;
  String? alg;
  @JSONField(name: "s_ctrp")
  String? sCtrp;

  RecommendSongsDataDailySongs();

  factory RecommendSongsDataDailySongs.fromJson(Map<String, dynamic> json) =>
      $RecommendSongsDataDailySongsFromJson(json);

  Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  int get songId => id!;

  @override
  String get songName => name!;

  @override
  int get songMv => mv!;

  @override
  IAlbum get album => al!;

  @override
  List<IArtist> get artists => (ar ?? []);
}

@JsonSerializable()
class RecommendSongsDataDailySongsAr extends IArtist {
  int? id;
  String? name;
  List<dynamic>? tns;
  List<dynamic>? alias;

  RecommendSongsDataDailySongsAr();

  factory RecommendSongsDataDailySongsAr.fromJson(Map<String, dynamic> json) =>
      $RecommendSongsDataDailySongsArFromJson(json);

  Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsArToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  int get artistId => id!;

  @override
  String get artistName => name!;

  @override
  String? get artistAvatar => null;
}

@JsonSerializable()
class RecommendSongsDataDailySongsAl extends IAlbum {
  int? id;
  String? name;
  String? picUrl;
  List<dynamic>? tns;
  @JSONField(name: "pic_str")
  String? picStr;
  int? pic;

  RecommendSongsDataDailySongsAl();

  factory RecommendSongsDataDailySongsAl.fromJson(Map<String, dynamic> json) =>
      $RecommendSongsDataDailySongsAlFromJson(json);

  Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsAlToJson(this);

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
class RecommendSongsDataDailySongsH {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  RecommendSongsDataDailySongsH();

  factory RecommendSongsDataDailySongsH.fromJson(Map<String, dynamic> json) =>
      $RecommendSongsDataDailySongsHFromJson(json);

  Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsHToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendSongsDataDailySongsM {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  RecommendSongsDataDailySongsM();

  factory RecommendSongsDataDailySongsM.fromJson(Map<String, dynamic> json) =>
      $RecommendSongsDataDailySongsMFromJson(json);

  Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsMToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendSongsDataDailySongsL {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  RecommendSongsDataDailySongsL();

  factory RecommendSongsDataDailySongsL.fromJson(Map<String, dynamic> json) =>
      $RecommendSongsDataDailySongsLFromJson(json);

  Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsLToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendSongsDataDailySongsSq {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  RecommendSongsDataDailySongsSq();

  factory RecommendSongsDataDailySongsSq.fromJson(Map<String, dynamic> json) =>
      $RecommendSongsDataDailySongsSqFromJson(json);

  Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsSqToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendSongsDataDailySongsHr {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  RecommendSongsDataDailySongsHr();

  factory RecommendSongsDataDailySongsHr.fromJson(Map<String, dynamic> json) =>
      $RecommendSongsDataDailySongsHrFromJson(json);

  Map<String, dynamic> toJson() => $RecommendSongsDataDailySongsHrToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendSongsDataDailySongsPrivilege {
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
  RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege;
  List<RecommendSongsDataDailySongsPrivilegeChargeInfoList>? chargeInfoList;

  RecommendSongsDataDailySongsPrivilege();

  factory RecommendSongsDataDailySongsPrivilege.fromJson(
          Map<String, dynamic> json) =>
      $RecommendSongsDataDailySongsPrivilegeFromJson(json);

  Map<String, dynamic> toJson() =>
      $RecommendSongsDataDailySongsPrivilegeToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege {
  bool? resConsumable;
  bool? userConsumable;
  dynamic listenType;

  RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege();

  factory RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege.fromJson(
          Map<String, dynamic> json) =>
      $RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilegeFromJson(json);

  Map<String, dynamic> toJson() =>
      $RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilegeToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendSongsDataDailySongsPrivilegeChargeInfoList {
  int? rate;
  dynamic chargeUrl;
  dynamic chargeMessage;
  int? chargeType;

  RecommendSongsDataDailySongsPrivilegeChargeInfoList();

  factory RecommendSongsDataDailySongsPrivilegeChargeInfoList.fromJson(
          Map<String, dynamic> json) =>
      $RecommendSongsDataDailySongsPrivilegeChargeInfoListFromJson(json);

  Map<String, dynamic> toJson() =>
      $RecommendSongsDataDailySongsPrivilegeChargeInfoListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RecommendSongsDataRecommendReasons {
  int? songId;
  String? reason;
  String? reasonId;
  dynamic targetUrl;

  RecommendSongsDataRecommendReasons();

  factory RecommendSongsDataRecommendReasons.fromJson(
          Map<String, dynamic> json) =>
      $RecommendSongsDataRecommendReasonsFromJson(json);

  Map<String, dynamic> toJson() =>
      $RecommendSongsDataRecommendReasonsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
