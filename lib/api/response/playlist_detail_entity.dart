import 'package:flutter_realm_music/entity/i_playlist.dart';
import 'package:flutter_realm_music/entity/i_user.dart';
import 'package:flutter_realm_music/generated/json/base/json_field.dart';
import 'package:flutter_realm_music/generated/json/playlist_detail_entity.g.dart';
import 'dart:convert';
export 'package:flutter_realm_music/generated/json/playlist_detail_entity.g.dart';

@JsonSerializable()
class PlaylistDetailEntity {
  int? code;
  dynamic relatedVideos;
  PlaylistDetailPlaylist? playlist;
  dynamic urls;
  List<PlaylistDetailPrivileges>? privileges;
  dynamic sharedPrivilege;
  dynamic resEntrance;
  dynamic fromUsers;
  int? fromUserCount;
  dynamic songFromUsers;
  int? trialMode;

  PlaylistDetailEntity();

  factory PlaylistDetailEntity.fromJson(Map<String, dynamic> json) =>
      $PlaylistDetailEntityFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistDetailEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylist extends IPlaylist {
  int? id;
  String? name;
  int? coverImgId;
  String? coverImgUrl;
  @JSONField(name: "coverImgId_str")
  String? coverimgidStr;
  int? adType;
  int? userId;
  int? createTime;
  int? status;
  bool? opRecommend;
  bool? highQuality;
  bool? newImported;
  int? updateTime;
  int? trackCount;
  int? specialType;
  int? privacy;
  int? trackUpdateTime;
  String? commentThreadId;
  int? playCount;
  int? trackNumberUpdateTime;
  int? subscribedCount;
  int? cloudTrackCount;
  bool? ordered;
  String? description;
  List<String>? tags;
  dynamic updateFrequency;
  int? backgroundCoverId;
  dynamic backgroundCoverUrl;
  int? titleImage;
  dynamic titleImageUrl;
  dynamic englishTitle;
  dynamic officialPlaylistType;
  bool? copied;
  dynamic relateResType;
  List<dynamic>? subscribers;
  bool? subscribed;
  PlaylistDetailPlaylistCreator? creator;
  List<PlaylistDetailPlaylistTracks>? tracks;
  dynamic videoIds;
  dynamic videos;
  List<PlaylistDetailPlaylistTrackIds>? trackIds;
  dynamic bannedTrackIds;
  dynamic mvResourceInfos;
  int? shareCount;
  int? commentCount;
  dynamic remixVideo;
  dynamic sharedUsers;
  dynamic historySharedUsers;
  String? gradeStatus;
  dynamic score;
  dynamic algTags;

  PlaylistDetailPlaylist();

  factory PlaylistDetailPlaylist.fromJson(Map<String, dynamic> json) =>
      $PlaylistDetailPlaylistFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistDetailPlaylistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  IUser get creatorUser => creator!;

  @override
  int get playlistId => id!;

  @override
  String get playlistImage => coverImgUrl!;

  @override
  String get playlistName => name!;
}

@JsonSerializable()
class PlaylistDetailPlaylistCreator extends IUser {
  bool? defaultAvatar;
  int? province;
  int? authStatus;
  bool? followed;
  String? avatarUrl;
  int? accountStatus;
  int? gender;
  int? city;
  int? birthday;
  int? userId;
  int? userType;
  String? nickname;
  String? signature;
  String? description;
  String? detailDescription;
  int? avatarImgId;
  int? backgroundImgId;
  String? backgroundUrl;
  int? authority;
  bool? mutual;
  dynamic expertTags;
  dynamic experts;
  int? djStatus;
  int? vipType;
  dynamic remarkName;
  int? authenticationTypes;
  dynamic avatarDetail;
  String? avatarImgIdStr;
  String? backgroundImgIdStr;
  bool? anchor;
  @JSONField(name: "avatarImgId_str")
  String? avatarimgidStr;

  PlaylistDetailPlaylistCreator();

  factory PlaylistDetailPlaylistCreator.fromJson(Map<String, dynamic> json) =>
      $PlaylistDetailPlaylistCreatorFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistDetailPlaylistCreatorToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  int get id => userId!;

  @override
  String get userAvatar => avatarUrl!;

  @override
  String get userSignature => signature ?? '';

  @override
  String get username => nickname!;
}

@JsonSerializable()
class PlaylistDetailPlaylistTracks {
  String? name;
  int? id;
  int? pst;
  int? t;
  List<PlaylistDetailPlaylistTracksAr>? ar;
  List<dynamic>? alia;
  int? pop;
  int? st;
  String? rt;
  int? fee;
  int? v;
  dynamic crbt;
  String? cf;
  PlaylistDetailPlaylistTracksAl? al;
  int? dt;
  PlaylistDetailPlaylistTracksH? h;
  PlaylistDetailPlaylistTracksM? m;
  PlaylistDetailPlaylistTracksL? l;
  PlaylistDetailPlaylistTracksSq? sq;
  PlaylistDetailPlaylistTracksHr? hr;
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
  int? mst;
  int? cp;
  int? mv;
  int? rtype;
  dynamic rurl;
  int? publishTime;
  List<String>? tns;

  PlaylistDetailPlaylistTracks();

  factory PlaylistDetailPlaylistTracks.fromJson(Map<String, dynamic> json) =>
      $PlaylistDetailPlaylistTracksFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTracksAr {
  int? id;
  String? name;
  List<dynamic>? tns;
  List<dynamic>? alias;

  PlaylistDetailPlaylistTracksAr();

  factory PlaylistDetailPlaylistTracksAr.fromJson(Map<String, dynamic> json) =>
      $PlaylistDetailPlaylistTracksArFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksArToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTracksAl {
  int? id;
  String? name;
  String? picUrl;
  List<dynamic>? tns;
  @JSONField(name: "pic_str")
  String? picStr;
  int? pic;

  PlaylistDetailPlaylistTracksAl();

  factory PlaylistDetailPlaylistTracksAl.fromJson(Map<String, dynamic> json) =>
      $PlaylistDetailPlaylistTracksAlFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksAlToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTracksH {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  PlaylistDetailPlaylistTracksH();

  factory PlaylistDetailPlaylistTracksH.fromJson(Map<String, dynamic> json) =>
      $PlaylistDetailPlaylistTracksHFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksHToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTracksM {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  PlaylistDetailPlaylistTracksM();

  factory PlaylistDetailPlaylistTracksM.fromJson(Map<String, dynamic> json) =>
      $PlaylistDetailPlaylistTracksMFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksMToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTracksL {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  PlaylistDetailPlaylistTracksL();

  factory PlaylistDetailPlaylistTracksL.fromJson(Map<String, dynamic> json) =>
      $PlaylistDetailPlaylistTracksLFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksLToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTracksSq {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  PlaylistDetailPlaylistTracksSq();

  factory PlaylistDetailPlaylistTracksSq.fromJson(Map<String, dynamic> json) =>
      $PlaylistDetailPlaylistTracksSqFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksSqToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTracksHr {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  PlaylistDetailPlaylistTracksHr();

  factory PlaylistDetailPlaylistTracksHr.fromJson(Map<String, dynamic> json) =>
      $PlaylistDetailPlaylistTracksHrFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTracksHrToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTrackIds {
  int? id;
  int? v;
  int? t;
  int? at;
  dynamic alg;
  int? uid;
  String? rcmdReason;
  dynamic sc;
  dynamic f;
  dynamic sr;

  PlaylistDetailPlaylistTrackIds();

  factory PlaylistDetailPlaylistTrackIds.fromJson(Map<String, dynamic> json) =>
      $PlaylistDetailPlaylistTrackIdsFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistDetailPlaylistTrackIdsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPrivileges {
  int? id;
  int? fee;
  int? payed;
  int? realPayed;
  int? st;
  int? pl;
  int? dl;
  int? sp;
  int? cp;
  int? subp;
  bool? cs;
  int? maxbr;
  int? fl;
  dynamic pc;
  bool? toast;
  int? flag;
  bool? paidBigBang;
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
  PlaylistDetailPrivilegesFreeTrialPrivilege? freeTrialPrivilege;
  int? rightSource;
  List<PlaylistDetailPrivilegesChargeInfoList>? chargeInfoList;

  PlaylistDetailPrivileges();

  factory PlaylistDetailPrivileges.fromJson(Map<String, dynamic> json) =>
      $PlaylistDetailPrivilegesFromJson(json);

  Map<String, dynamic> toJson() => $PlaylistDetailPrivilegesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPrivilegesFreeTrialPrivilege {
  bool? resConsumable;
  bool? userConsumable;
  dynamic listenType;
  dynamic cannotListenReason;

  PlaylistDetailPrivilegesFreeTrialPrivilege();

  factory PlaylistDetailPrivilegesFreeTrialPrivilege.fromJson(
          Map<String, dynamic> json) =>
      $PlaylistDetailPrivilegesFreeTrialPrivilegeFromJson(json);

  Map<String, dynamic> toJson() =>
      $PlaylistDetailPrivilegesFreeTrialPrivilegeToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPrivilegesChargeInfoList {
  int? rate;
  dynamic chargeUrl;
  dynamic chargeMessage;
  int? chargeType;

  PlaylistDetailPrivilegesChargeInfoList();

  factory PlaylistDetailPrivilegesChargeInfoList.fromJson(
          Map<String, dynamic> json) =>
      $PlaylistDetailPrivilegesChargeInfoListFromJson(json);

  Map<String, dynamic> toJson() =>
      $PlaylistDetailPrivilegesChargeInfoListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
