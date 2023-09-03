import 'package:flutter_realm_music/entity/i_album.dart';
import 'package:flutter_realm_music/entity/i_artist.dart';
import 'package:flutter_realm_music/entity/i_song.dart';
import 'package:flutter_realm_music/generated/json/base/json_field.dart';
import 'package:flutter_realm_music/generated/json/album_detail_entity.g.dart';
import 'dart:convert';
export 'package:flutter_realm_music/generated/json/album_detail_entity.g.dart';

@JsonSerializable()
class AlbumDetailEntity {
  bool? resourceState;
  List<AlbumDetailSongs>? songs;
  int? code;
  AlbumDetailAlbum? album;

  AlbumDetailEntity();

  factory AlbumDetailEntity.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailEntityFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongs extends ISong {
  List<dynamic>? rtUrls;
  List<AlbumDetailSongsAr>? ar;
  AlbumDetailSongsAl? al;
  int? st;
  dynamic noCopyrightRcmd;
  dynamic songJumpInfo;
  int? rtype;
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
  AlbumDetailSongsH? h;
  AlbumDetailSongsSq? sq;
  dynamic hr;
  AlbumDetailSongsL? l;
  dynamic rtUrl;
  int? ftype;
  int? djId;
  int? no;
  int? fee;
  int? mv;
  int? t;
  int? v;
  String? cd;
  dynamic a;
  AlbumDetailSongsM? m;
  String? name;
  int? id;
  AlbumDetailSongsPrivilege? privilege;

  AlbumDetailSongs();

  factory AlbumDetailSongs.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsToJson(this);

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
class AlbumDetailSongsAr extends IArtist {
  int? id;
  String? name;
  List<String>? alia;

  AlbumDetailSongsAr();

  factory AlbumDetailSongsAr.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsArFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsArToJson(this);

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
class AlbumDetailSongsAl extends IAlbum {
  int? id;
  String? name;
  String? picUrl;
  @JSONField(name: "pic_str")
  String? picStr;
  int? pic;

  AlbumDetailSongsAl();

  factory AlbumDetailSongsAl.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsAlFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsAlToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  int get albumId => id!;

  @override
  String get albumName => name!;

  @override
  String get albumImage => picUrl!;
}

@JsonSerializable()
class AlbumDetailSongsH {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  AlbumDetailSongsH();

  factory AlbumDetailSongsH.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsHFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsHToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongsSq {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  AlbumDetailSongsSq();

  factory AlbumDetailSongsSq.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsSqFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsSqToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongsL {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  AlbumDetailSongsL();

  factory AlbumDetailSongsL.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsLFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsLToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongsM {
  int? br;
  int? fid;
  int? size;
  int? vd;
  int? sr;

  AlbumDetailSongsM();

  factory AlbumDetailSongsM.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsMFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsMToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongsPrivilege {
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
  AlbumDetailSongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege;
  List<AlbumDetailSongsPrivilegeChargeInfoList>? chargeInfoList;

  AlbumDetailSongsPrivilege();

  factory AlbumDetailSongsPrivilege.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailSongsPrivilegeFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailSongsPrivilegeToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongsPrivilegeFreeTrialPrivilege {
  bool? resConsumable;
  bool? userConsumable;
  dynamic listenType;

  AlbumDetailSongsPrivilegeFreeTrialPrivilege();

  factory AlbumDetailSongsPrivilegeFreeTrialPrivilege.fromJson(
          Map<String, dynamic> json) =>
      $AlbumDetailSongsPrivilegeFreeTrialPrivilegeFromJson(json);

  Map<String, dynamic> toJson() =>
      $AlbumDetailSongsPrivilegeFreeTrialPrivilegeToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailSongsPrivilegeChargeInfoList {
  int? rate;
  dynamic chargeUrl;
  dynamic chargeMessage;
  int? chargeType;

  AlbumDetailSongsPrivilegeChargeInfoList();

  factory AlbumDetailSongsPrivilegeChargeInfoList.fromJson(
          Map<String, dynamic> json) =>
      $AlbumDetailSongsPrivilegeChargeInfoListFromJson(json);

  Map<String, dynamic> toJson() =>
      $AlbumDetailSongsPrivilegeChargeInfoListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailAlbum extends IAlbum {
  List<dynamic>? songs;
  bool? paid;
  bool? onSale;
  int? mark;
  dynamic awardTags;
  int? companyId;
  String? blurPicUrl;
  int? pic;
  List<AlbumDetailAlbumArtists>? artists;
  List<dynamic>? alias;
  int? copyrightId;
  int? picId;
  AlbumDetailAlbumArtist? artist;
  String? briefDesc;
  int? publishTime;
  String? company;
  String? picUrl;
  String? commentThreadId;
  String? tags;
  int? status;
  String? subType;
  String? description;
  String? name;
  int? id;
  String? type;
  int? size;
  @JSONField(name: "picId_str")
  String? picidStr;
  AlbumDetailAlbumInfo? info;

  AlbumDetailAlbum();

  factory AlbumDetailAlbum.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailAlbumFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailAlbumToJson(this);

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
class AlbumDetailAlbumArtists {
  int? img1v1Id;
  int? topicPerson;
  bool? followed;
  String? trans;
  List<dynamic>? alias;
  int? picId;
  String? briefDesc;
  int? musicSize;
  int? albumSize;
  String? picUrl;
  String? img1v1Url;
  String? name;
  int? id;
  @JSONField(name: "img1v1Id_str")
  String? img1v1idStr;

  AlbumDetailAlbumArtists();

  factory AlbumDetailAlbumArtists.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailAlbumArtistsFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailAlbumArtistsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailAlbumArtist {
  int? img1v1Id;
  int? topicPerson;
  bool? followed;
  String? trans;
  List<String>? alias;
  int? picId;
  String? briefDesc;
  int? musicSize;
  int? albumSize;
  String? picUrl;
  String? img1v1Url;
  String? name;
  int? id;
  @JSONField(name: "picId_str")
  String? picidStr;
  @JSONField(name: "img1v1Id_str")
  String? img1v1idStr;

  AlbumDetailAlbumArtist();

  factory AlbumDetailAlbumArtist.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailAlbumArtistFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailAlbumArtistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailAlbumInfo {
  AlbumDetailAlbumInfoCommentThread? commentThread;
  dynamic latestLikedUsers;
  bool? liked;
  dynamic comments;
  int? resourceType;
  int? resourceId;
  int? commentCount;
  int? likedCount;
  int? shareCount;
  String? threadId;

  AlbumDetailAlbumInfo();

  factory AlbumDetailAlbumInfo.fromJson(Map<String, dynamic> json) =>
      $AlbumDetailAlbumInfoFromJson(json);

  Map<String, dynamic> toJson() => $AlbumDetailAlbumInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailAlbumInfoCommentThread {
  String? id;
  AlbumDetailAlbumInfoCommentThreadResourceInfo? resourceInfo;
  int? resourceType;
  int? commentCount;
  int? likedCount;
  int? shareCount;
  int? hotCount;
  dynamic latestLikedUsers;
  int? resourceOwnerId;
  String? resourceTitle;
  int? resourceId;

  AlbumDetailAlbumInfoCommentThread();

  factory AlbumDetailAlbumInfoCommentThread.fromJson(
          Map<String, dynamic> json) =>
      $AlbumDetailAlbumInfoCommentThreadFromJson(json);

  Map<String, dynamic> toJson() =>
      $AlbumDetailAlbumInfoCommentThreadToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumDetailAlbumInfoCommentThreadResourceInfo {
  int? id;
  int? userId;
  String? name;
  String? imgUrl;
  dynamic creator;
  dynamic encodedId;
  dynamic subTitle;
  dynamic webUrl;

  AlbumDetailAlbumInfoCommentThreadResourceInfo();

  factory AlbumDetailAlbumInfoCommentThreadResourceInfo.fromJson(
          Map<String, dynamic> json) =>
      $AlbumDetailAlbumInfoCommentThreadResourceInfoFromJson(json);

  Map<String, dynamic> toJson() =>
      $AlbumDetailAlbumInfoCommentThreadResourceInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
