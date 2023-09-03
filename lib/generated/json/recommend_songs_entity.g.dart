import 'package:flutter_realm_music/generated/json/base/json_convert_content.dart';
import 'package:flutter_realm_music/api/response/recommend_songs_entity.dart';
import 'package:flutter_realm_music/entity/i_album.dart';

import 'package:flutter_realm_music/entity/i_artist.dart';

import 'package:flutter_realm_music/entity/i_song.dart';


RecommendSongsEntity $RecommendSongsEntityFromJson(Map<String, dynamic> json) {
  final RecommendSongsEntity recommendSongsEntity = RecommendSongsEntity();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    recommendSongsEntity.code = code;
  }
  final RecommendSongsData? data = jsonConvert.convert<RecommendSongsData>(
      json['data']);
  if (data != null) {
    recommendSongsEntity.data = data;
  }
  return recommendSongsEntity;
}

Map<String, dynamic> $RecommendSongsEntityToJson(RecommendSongsEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['data'] = entity.data?.toJson();
  return data;
}

extension RecommendSongsEntityExtension on RecommendSongsEntity {
  RecommendSongsEntity copyWith({
    int? code,
    RecommendSongsData? data,
  }) {
    return RecommendSongsEntity()
      ..code = code ?? this.code
      ..data = data ?? this.data;
  }
}

RecommendSongsData $RecommendSongsDataFromJson(Map<String, dynamic> json) {
  final RecommendSongsData recommendSongsData = RecommendSongsData();
  final List<
      RecommendSongsDataDailySongs>? dailySongs = (json['dailySongs'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<RecommendSongsDataDailySongs>(
          e) as RecommendSongsDataDailySongs).toList();
  if (dailySongs != null) {
    recommendSongsData.dailySongs = dailySongs;
  }
  final List<dynamic>? orderSongs = (json['orderSongs'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (orderSongs != null) {
    recommendSongsData.orderSongs = orderSongs;
  }
  final List<
      RecommendSongsDataRecommendReasons>? recommendReasons = (json['recommendReasons'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<RecommendSongsDataRecommendReasons>(
          e) as RecommendSongsDataRecommendReasons).toList();
  if (recommendReasons != null) {
    recommendSongsData.recommendReasons = recommendReasons;
  }
  final dynamic mvResourceInfos = json['mvResourceInfos'];
  if (mvResourceInfos != null) {
    recommendSongsData.mvResourceInfos = mvResourceInfos;
  }
  return recommendSongsData;
}

Map<String, dynamic> $RecommendSongsDataToJson(RecommendSongsData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['dailySongs'] = entity.dailySongs?.map((v) => v.toJson()).toList();
  data['orderSongs'] = entity.orderSongs;
  data['recommendReasons'] =
      entity.recommendReasons?.map((v) => v.toJson()).toList();
  data['mvResourceInfos'] = entity.mvResourceInfos;
  return data;
}

extension RecommendSongsDataExtension on RecommendSongsData {
  RecommendSongsData copyWith({
    List<RecommendSongsDataDailySongs>? dailySongs,
    List<dynamic>? orderSongs,
    List<RecommendSongsDataRecommendReasons>? recommendReasons,
    dynamic mvResourceInfos,
  }) {
    return RecommendSongsData()
      ..dailySongs = dailySongs ?? this.dailySongs
      ..orderSongs = orderSongs ?? this.orderSongs
      ..recommendReasons = recommendReasons ?? this.recommendReasons
      ..mvResourceInfos = mvResourceInfos ?? this.mvResourceInfos;
  }
}

RecommendSongsDataDailySongs $RecommendSongsDataDailySongsFromJson(
    Map<String, dynamic> json) {
  final RecommendSongsDataDailySongs recommendSongsDataDailySongs = RecommendSongsDataDailySongs();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    recommendSongsDataDailySongs.name = name;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    recommendSongsDataDailySongs.id = id;
  }
  final int? pst = jsonConvert.convert<int>(json['pst']);
  if (pst != null) {
    recommendSongsDataDailySongs.pst = pst;
  }
  final int? t = jsonConvert.convert<int>(json['t']);
  if (t != null) {
    recommendSongsDataDailySongs.t = t;
  }
  final List<RecommendSongsDataDailySongsAr>? ar = (json['ar'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<RecommendSongsDataDailySongsAr>(
          e) as RecommendSongsDataDailySongsAr).toList();
  if (ar != null) {
    recommendSongsDataDailySongs.ar = ar;
  }
  final List<String>? alia = (json['alia'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (alia != null) {
    recommendSongsDataDailySongs.alia = alia;
  }
  final int? pop = jsonConvert.convert<int>(json['pop']);
  if (pop != null) {
    recommendSongsDataDailySongs.pop = pop;
  }
  final int? st = jsonConvert.convert<int>(json['st']);
  if (st != null) {
    recommendSongsDataDailySongs.st = st;
  }
  final String? rt = jsonConvert.convert<String>(json['rt']);
  if (rt != null) {
    recommendSongsDataDailySongs.rt = rt;
  }
  final int? fee = jsonConvert.convert<int>(json['fee']);
  if (fee != null) {
    recommendSongsDataDailySongs.fee = fee;
  }
  final int? v = jsonConvert.convert<int>(json['v']);
  if (v != null) {
    recommendSongsDataDailySongs.v = v;
  }
  final dynamic crbt = json['crbt'];
  if (crbt != null) {
    recommendSongsDataDailySongs.crbt = crbt;
  }
  final String? cf = jsonConvert.convert<String>(json['cf']);
  if (cf != null) {
    recommendSongsDataDailySongs.cf = cf;
  }
  final RecommendSongsDataDailySongsAl? al = jsonConvert.convert<
      RecommendSongsDataDailySongsAl>(json['al']);
  if (al != null) {
    recommendSongsDataDailySongs.al = al;
  }
  final int? dt = jsonConvert.convert<int>(json['dt']);
  if (dt != null) {
    recommendSongsDataDailySongs.dt = dt;
  }
  final RecommendSongsDataDailySongsH? h = jsonConvert.convert<
      RecommendSongsDataDailySongsH>(json['h']);
  if (h != null) {
    recommendSongsDataDailySongs.h = h;
  }
  final RecommendSongsDataDailySongsM? m = jsonConvert.convert<
      RecommendSongsDataDailySongsM>(json['m']);
  if (m != null) {
    recommendSongsDataDailySongs.m = m;
  }
  final RecommendSongsDataDailySongsL? l = jsonConvert.convert<
      RecommendSongsDataDailySongsL>(json['l']);
  if (l != null) {
    recommendSongsDataDailySongs.l = l;
  }
  final RecommendSongsDataDailySongsSq? sq = jsonConvert.convert<
      RecommendSongsDataDailySongsSq>(json['sq']);
  if (sq != null) {
    recommendSongsDataDailySongs.sq = sq;
  }
  final RecommendSongsDataDailySongsHr? hr = jsonConvert.convert<
      RecommendSongsDataDailySongsHr>(json['hr']);
  if (hr != null) {
    recommendSongsDataDailySongs.hr = hr;
  }
  final dynamic a = json['a'];
  if (a != null) {
    recommendSongsDataDailySongs.a = a;
  }
  final String? cd = jsonConvert.convert<String>(json['cd']);
  if (cd != null) {
    recommendSongsDataDailySongs.cd = cd;
  }
  final int? no = jsonConvert.convert<int>(json['no']);
  if (no != null) {
    recommendSongsDataDailySongs.no = no;
  }
  final dynamic rtUrl = json['rtUrl'];
  if (rtUrl != null) {
    recommendSongsDataDailySongs.rtUrl = rtUrl;
  }
  final int? ftype = jsonConvert.convert<int>(json['ftype']);
  if (ftype != null) {
    recommendSongsDataDailySongs.ftype = ftype;
  }
  final List<dynamic>? rtUrls = (json['rtUrls'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (rtUrls != null) {
    recommendSongsDataDailySongs.rtUrls = rtUrls;
  }
  final int? djId = jsonConvert.convert<int>(json['djId']);
  if (djId != null) {
    recommendSongsDataDailySongs.djId = djId;
  }
  final int? copyright = jsonConvert.convert<int>(json['copyright']);
  if (copyright != null) {
    recommendSongsDataDailySongs.copyright = copyright;
  }
  final int? sId = jsonConvert.convert<int>(json['s_id']);
  if (sId != null) {
    recommendSongsDataDailySongs.sId = sId;
  }
  final int? mark = jsonConvert.convert<int>(json['mark']);
  if (mark != null) {
    recommendSongsDataDailySongs.mark = mark;
  }
  final int? originCoverType = jsonConvert.convert<int>(
      json['originCoverType']);
  if (originCoverType != null) {
    recommendSongsDataDailySongs.originCoverType = originCoverType;
  }
  final dynamic originSongSimpleData = json['originSongSimpleData'];
  if (originSongSimpleData != null) {
    recommendSongsDataDailySongs.originSongSimpleData = originSongSimpleData;
  }
  final dynamic tagPicList = json['tagPicList'];
  if (tagPicList != null) {
    recommendSongsDataDailySongs.tagPicList = tagPicList;
  }
  final bool? resourceState = jsonConvert.convert<bool>(json['resourceState']);
  if (resourceState != null) {
    recommendSongsDataDailySongs.resourceState = resourceState;
  }
  final int? version = jsonConvert.convert<int>(json['version']);
  if (version != null) {
    recommendSongsDataDailySongs.version = version;
  }
  final dynamic songJumpInfo = json['songJumpInfo'];
  if (songJumpInfo != null) {
    recommendSongsDataDailySongs.songJumpInfo = songJumpInfo;
  }
  final dynamic entertainmentTags = json['entertainmentTags'];
  if (entertainmentTags != null) {
    recommendSongsDataDailySongs.entertainmentTags = entertainmentTags;
  }
  final int? single = jsonConvert.convert<int>(json['single']);
  if (single != null) {
    recommendSongsDataDailySongs.single = single;
  }
  final dynamic noCopyrightRcmd = json['noCopyrightRcmd'];
  if (noCopyrightRcmd != null) {
    recommendSongsDataDailySongs.noCopyrightRcmd = noCopyrightRcmd;
  }
  final int? rtype = jsonConvert.convert<int>(json['rtype']);
  if (rtype != null) {
    recommendSongsDataDailySongs.rtype = rtype;
  }
  final dynamic rurl = json['rurl'];
  if (rurl != null) {
    recommendSongsDataDailySongs.rurl = rurl;
  }
  final int? mst = jsonConvert.convert<int>(json['mst']);
  if (mst != null) {
    recommendSongsDataDailySongs.mst = mst;
  }
  final int? cp = jsonConvert.convert<int>(json['cp']);
  if (cp != null) {
    recommendSongsDataDailySongs.cp = cp;
  }
  final int? mv = jsonConvert.convert<int>(json['mv']);
  if (mv != null) {
    recommendSongsDataDailySongs.mv = mv;
  }
  final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
  if (publishTime != null) {
    recommendSongsDataDailySongs.publishTime = publishTime;
  }
  final String? reason = jsonConvert.convert<String>(json['reason']);
  if (reason != null) {
    recommendSongsDataDailySongs.reason = reason;
  }
  final String? recommendReason = jsonConvert.convert<String>(
      json['recommendReason']);
  if (recommendReason != null) {
    recommendSongsDataDailySongs.recommendReason = recommendReason;
  }
  final RecommendSongsDataDailySongsPrivilege? privilege = jsonConvert.convert<
      RecommendSongsDataDailySongsPrivilege>(json['privilege']);
  if (privilege != null) {
    recommendSongsDataDailySongs.privilege = privilege;
  }
  final String? alg = jsonConvert.convert<String>(json['alg']);
  if (alg != null) {
    recommendSongsDataDailySongs.alg = alg;
  }
  final String? sCtrp = jsonConvert.convert<String>(json['s_ctrp']);
  if (sCtrp != null) {
    recommendSongsDataDailySongs.sCtrp = sCtrp;
  }
  return recommendSongsDataDailySongs;
}

Map<String, dynamic> $RecommendSongsDataDailySongsToJson(
    RecommendSongsDataDailySongs entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['id'] = entity.id;
  data['pst'] = entity.pst;
  data['t'] = entity.t;
  data['ar'] = entity.ar?.map((v) => v.toJson()).toList();
  data['alia'] = entity.alia;
  data['pop'] = entity.pop;
  data['st'] = entity.st;
  data['rt'] = entity.rt;
  data['fee'] = entity.fee;
  data['v'] = entity.v;
  data['crbt'] = entity.crbt;
  data['cf'] = entity.cf;
  data['al'] = entity.al?.toJson();
  data['dt'] = entity.dt;
  data['h'] = entity.h?.toJson();
  data['m'] = entity.m?.toJson();
  data['l'] = entity.l?.toJson();
  data['sq'] = entity.sq?.toJson();
  data['hr'] = entity.hr?.toJson();
  data['a'] = entity.a;
  data['cd'] = entity.cd;
  data['no'] = entity.no;
  data['rtUrl'] = entity.rtUrl;
  data['ftype'] = entity.ftype;
  data['rtUrls'] = entity.rtUrls;
  data['djId'] = entity.djId;
  data['copyright'] = entity.copyright;
  data['s_id'] = entity.sId;
  data['mark'] = entity.mark;
  data['originCoverType'] = entity.originCoverType;
  data['originSongSimpleData'] = entity.originSongSimpleData;
  data['tagPicList'] = entity.tagPicList;
  data['resourceState'] = entity.resourceState;
  data['version'] = entity.version;
  data['songJumpInfo'] = entity.songJumpInfo;
  data['entertainmentTags'] = entity.entertainmentTags;
  data['single'] = entity.single;
  data['noCopyrightRcmd'] = entity.noCopyrightRcmd;
  data['rtype'] = entity.rtype;
  data['rurl'] = entity.rurl;
  data['mst'] = entity.mst;
  data['cp'] = entity.cp;
  data['mv'] = entity.mv;
  data['publishTime'] = entity.publishTime;
  data['reason'] = entity.reason;
  data['recommendReason'] = entity.recommendReason;
  data['privilege'] = entity.privilege?.toJson();
  data['alg'] = entity.alg;
  data['s_ctrp'] = entity.sCtrp;
  return data;
}

extension RecommendSongsDataDailySongsExtension on RecommendSongsDataDailySongs {
  RecommendSongsDataDailySongs copyWith({
    String? name,
    int? id,
    int? pst,
    int? t,
    List<RecommendSongsDataDailySongsAr>? ar,
    List<String>? alia,
    int? pop,
    int? st,
    String? rt,
    int? fee,
    int? v,
    dynamic crbt,
    String? cf,
    RecommendSongsDataDailySongsAl? al,
    int? dt,
    RecommendSongsDataDailySongsH? h,
    RecommendSongsDataDailySongsM? m,
    RecommendSongsDataDailySongsL? l,
    RecommendSongsDataDailySongsSq? sq,
    RecommendSongsDataDailySongsHr? hr,
    dynamic a,
    String? cd,
    int? no,
    dynamic rtUrl,
    int? ftype,
    List<dynamic>? rtUrls,
    int? djId,
    int? copyright,
    int? sId,
    int? mark,
    int? originCoverType,
    dynamic originSongSimpleData,
    dynamic tagPicList,
    bool? resourceState,
    int? version,
    dynamic songJumpInfo,
    dynamic entertainmentTags,
    int? single,
    dynamic noCopyrightRcmd,
    int? rtype,
    dynamic rurl,
    int? mst,
    int? cp,
    int? mv,
    int? publishTime,
    String? reason,
    String? recommendReason,
    RecommendSongsDataDailySongsPrivilege? privilege,
    String? alg,
    String? sCtrp,
  }) {
    return RecommendSongsDataDailySongs()
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..pst = pst ?? this.pst
      ..t = t ?? this.t
      ..ar = ar ?? this.ar
      ..alia = alia ?? this.alia
      ..pop = pop ?? this.pop
      ..st = st ?? this.st
      ..rt = rt ?? this.rt
      ..fee = fee ?? this.fee
      ..v = v ?? this.v
      ..crbt = crbt ?? this.crbt
      ..cf = cf ?? this.cf
      ..al = al ?? this.al
      ..dt = dt ?? this.dt
      ..h = h ?? this.h
      ..m = m ?? this.m
      ..l = l ?? this.l
      ..sq = sq ?? this.sq
      ..hr = hr ?? this.hr
      ..a = a ?? this.a
      ..cd = cd ?? this.cd
      ..no = no ?? this.no
      ..rtUrl = rtUrl ?? this.rtUrl
      ..ftype = ftype ?? this.ftype
      ..rtUrls = rtUrls ?? this.rtUrls
      ..djId = djId ?? this.djId
      ..copyright = copyright ?? this.copyright
      ..sId = sId ?? this.sId
      ..mark = mark ?? this.mark
      ..originCoverType = originCoverType ?? this.originCoverType
      ..originSongSimpleData = originSongSimpleData ?? this.originSongSimpleData
      ..tagPicList = tagPicList ?? this.tagPicList
      ..resourceState = resourceState ?? this.resourceState
      ..version = version ?? this.version
      ..songJumpInfo = songJumpInfo ?? this.songJumpInfo
      ..entertainmentTags = entertainmentTags ?? this.entertainmentTags
      ..single = single ?? this.single
      ..noCopyrightRcmd = noCopyrightRcmd ?? this.noCopyrightRcmd
      ..rtype = rtype ?? this.rtype
      ..rurl = rurl ?? this.rurl
      ..mst = mst ?? this.mst
      ..cp = cp ?? this.cp
      ..mv = mv ?? this.mv
      ..publishTime = publishTime ?? this.publishTime
      ..reason = reason ?? this.reason
      ..recommendReason = recommendReason ?? this.recommendReason
      ..privilege = privilege ?? this.privilege
      ..alg = alg ?? this.alg
      ..sCtrp = sCtrp ?? this.sCtrp;
  }
}

RecommendSongsDataDailySongsAr $RecommendSongsDataDailySongsArFromJson(
    Map<String, dynamic> json) {
  final RecommendSongsDataDailySongsAr recommendSongsDataDailySongsAr = RecommendSongsDataDailySongsAr();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    recommendSongsDataDailySongsAr.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    recommendSongsDataDailySongsAr.name = name;
  }
  final List<dynamic>? tns = (json['tns'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (tns != null) {
    recommendSongsDataDailySongsAr.tns = tns;
  }
  final List<dynamic>? alias = (json['alias'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (alias != null) {
    recommendSongsDataDailySongsAr.alias = alias;
  }
  return recommendSongsDataDailySongsAr;
}

Map<String, dynamic> $RecommendSongsDataDailySongsArToJson(
    RecommendSongsDataDailySongsAr entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['tns'] = entity.tns;
  data['alias'] = entity.alias;
  return data;
}

extension RecommendSongsDataDailySongsArExtension on RecommendSongsDataDailySongsAr {
  RecommendSongsDataDailySongsAr copyWith({
    int? id,
    String? name,
    List<dynamic>? tns,
    List<dynamic>? alias,
  }) {
    return RecommendSongsDataDailySongsAr()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..tns = tns ?? this.tns
      ..alias = alias ?? this.alias;
  }
}

RecommendSongsDataDailySongsAl $RecommendSongsDataDailySongsAlFromJson(
    Map<String, dynamic> json) {
  final RecommendSongsDataDailySongsAl recommendSongsDataDailySongsAl = RecommendSongsDataDailySongsAl();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    recommendSongsDataDailySongsAl.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    recommendSongsDataDailySongsAl.name = name;
  }
  final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
  if (picUrl != null) {
    recommendSongsDataDailySongsAl.picUrl = picUrl;
  }
  final List<dynamic>? tns = (json['tns'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (tns != null) {
    recommendSongsDataDailySongsAl.tns = tns;
  }
  final String? picStr = jsonConvert.convert<String>(json['pic_str']);
  if (picStr != null) {
    recommendSongsDataDailySongsAl.picStr = picStr;
  }
  final int? pic = jsonConvert.convert<int>(json['pic']);
  if (pic != null) {
    recommendSongsDataDailySongsAl.pic = pic;
  }
  return recommendSongsDataDailySongsAl;
}

Map<String, dynamic> $RecommendSongsDataDailySongsAlToJson(
    RecommendSongsDataDailySongsAl entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['picUrl'] = entity.picUrl;
  data['tns'] = entity.tns;
  data['pic_str'] = entity.picStr;
  data['pic'] = entity.pic;
  return data;
}

extension RecommendSongsDataDailySongsAlExtension on RecommendSongsDataDailySongsAl {
  RecommendSongsDataDailySongsAl copyWith({
    int? id,
    String? name,
    String? picUrl,
    List<dynamic>? tns,
    String? picStr,
    int? pic,
  }) {
    return RecommendSongsDataDailySongsAl()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..picUrl = picUrl ?? this.picUrl
      ..tns = tns ?? this.tns
      ..picStr = picStr ?? this.picStr
      ..pic = pic ?? this.pic;
  }
}

RecommendSongsDataDailySongsH $RecommendSongsDataDailySongsHFromJson(
    Map<String, dynamic> json) {
  final RecommendSongsDataDailySongsH recommendSongsDataDailySongsH = RecommendSongsDataDailySongsH();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    recommendSongsDataDailySongsH.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    recommendSongsDataDailySongsH.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    recommendSongsDataDailySongsH.size = size;
  }
  final int? vd = jsonConvert.convert<int>(json['vd']);
  if (vd != null) {
    recommendSongsDataDailySongsH.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    recommendSongsDataDailySongsH.sr = sr;
  }
  return recommendSongsDataDailySongsH;
}

Map<String, dynamic> $RecommendSongsDataDailySongsHToJson(
    RecommendSongsDataDailySongsH entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension RecommendSongsDataDailySongsHExtension on RecommendSongsDataDailySongsH {
  RecommendSongsDataDailySongsH copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
    int? sr,
  }) {
    return RecommendSongsDataDailySongsH()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

RecommendSongsDataDailySongsM $RecommendSongsDataDailySongsMFromJson(
    Map<String, dynamic> json) {
  final RecommendSongsDataDailySongsM recommendSongsDataDailySongsM = RecommendSongsDataDailySongsM();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    recommendSongsDataDailySongsM.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    recommendSongsDataDailySongsM.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    recommendSongsDataDailySongsM.size = size;
  }
  final int? vd = jsonConvert.convert<int>(json['vd']);
  if (vd != null) {
    recommendSongsDataDailySongsM.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    recommendSongsDataDailySongsM.sr = sr;
  }
  return recommendSongsDataDailySongsM;
}

Map<String, dynamic> $RecommendSongsDataDailySongsMToJson(
    RecommendSongsDataDailySongsM entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension RecommendSongsDataDailySongsMExtension on RecommendSongsDataDailySongsM {
  RecommendSongsDataDailySongsM copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
    int? sr,
  }) {
    return RecommendSongsDataDailySongsM()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

RecommendSongsDataDailySongsL $RecommendSongsDataDailySongsLFromJson(
    Map<String, dynamic> json) {
  final RecommendSongsDataDailySongsL recommendSongsDataDailySongsL = RecommendSongsDataDailySongsL();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    recommendSongsDataDailySongsL.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    recommendSongsDataDailySongsL.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    recommendSongsDataDailySongsL.size = size;
  }
  final int? vd = jsonConvert.convert<int>(json['vd']);
  if (vd != null) {
    recommendSongsDataDailySongsL.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    recommendSongsDataDailySongsL.sr = sr;
  }
  return recommendSongsDataDailySongsL;
}

Map<String, dynamic> $RecommendSongsDataDailySongsLToJson(
    RecommendSongsDataDailySongsL entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension RecommendSongsDataDailySongsLExtension on RecommendSongsDataDailySongsL {
  RecommendSongsDataDailySongsL copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
    int? sr,
  }) {
    return RecommendSongsDataDailySongsL()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

RecommendSongsDataDailySongsSq $RecommendSongsDataDailySongsSqFromJson(
    Map<String, dynamic> json) {
  final RecommendSongsDataDailySongsSq recommendSongsDataDailySongsSq = RecommendSongsDataDailySongsSq();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    recommendSongsDataDailySongsSq.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    recommendSongsDataDailySongsSq.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    recommendSongsDataDailySongsSq.size = size;
  }
  final int? vd = jsonConvert.convert<int>(json['vd']);
  if (vd != null) {
    recommendSongsDataDailySongsSq.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    recommendSongsDataDailySongsSq.sr = sr;
  }
  return recommendSongsDataDailySongsSq;
}

Map<String, dynamic> $RecommendSongsDataDailySongsSqToJson(
    RecommendSongsDataDailySongsSq entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension RecommendSongsDataDailySongsSqExtension on RecommendSongsDataDailySongsSq {
  RecommendSongsDataDailySongsSq copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
    int? sr,
  }) {
    return RecommendSongsDataDailySongsSq()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

RecommendSongsDataDailySongsHr $RecommendSongsDataDailySongsHrFromJson(
    Map<String, dynamic> json) {
  final RecommendSongsDataDailySongsHr recommendSongsDataDailySongsHr = RecommendSongsDataDailySongsHr();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    recommendSongsDataDailySongsHr.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    recommendSongsDataDailySongsHr.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    recommendSongsDataDailySongsHr.size = size;
  }
  final int? vd = jsonConvert.convert<int>(json['vd']);
  if (vd != null) {
    recommendSongsDataDailySongsHr.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    recommendSongsDataDailySongsHr.sr = sr;
  }
  return recommendSongsDataDailySongsHr;
}

Map<String, dynamic> $RecommendSongsDataDailySongsHrToJson(
    RecommendSongsDataDailySongsHr entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension RecommendSongsDataDailySongsHrExtension on RecommendSongsDataDailySongsHr {
  RecommendSongsDataDailySongsHr copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
    int? sr,
  }) {
    return RecommendSongsDataDailySongsHr()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

RecommendSongsDataDailySongsPrivilege $RecommendSongsDataDailySongsPrivilegeFromJson(
    Map<String, dynamic> json) {
  final RecommendSongsDataDailySongsPrivilege recommendSongsDataDailySongsPrivilege = RecommendSongsDataDailySongsPrivilege();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    recommendSongsDataDailySongsPrivilege.id = id;
  }
  final int? fee = jsonConvert.convert<int>(json['fee']);
  if (fee != null) {
    recommendSongsDataDailySongsPrivilege.fee = fee;
  }
  final int? payed = jsonConvert.convert<int>(json['payed']);
  if (payed != null) {
    recommendSongsDataDailySongsPrivilege.payed = payed;
  }
  final int? st = jsonConvert.convert<int>(json['st']);
  if (st != null) {
    recommendSongsDataDailySongsPrivilege.st = st;
  }
  final int? pl = jsonConvert.convert<int>(json['pl']);
  if (pl != null) {
    recommendSongsDataDailySongsPrivilege.pl = pl;
  }
  final int? dl = jsonConvert.convert<int>(json['dl']);
  if (dl != null) {
    recommendSongsDataDailySongsPrivilege.dl = dl;
  }
  final int? sp = jsonConvert.convert<int>(json['sp']);
  if (sp != null) {
    recommendSongsDataDailySongsPrivilege.sp = sp;
  }
  final int? cp = jsonConvert.convert<int>(json['cp']);
  if (cp != null) {
    recommendSongsDataDailySongsPrivilege.cp = cp;
  }
  final int? subp = jsonConvert.convert<int>(json['subp']);
  if (subp != null) {
    recommendSongsDataDailySongsPrivilege.subp = subp;
  }
  final bool? cs = jsonConvert.convert<bool>(json['cs']);
  if (cs != null) {
    recommendSongsDataDailySongsPrivilege.cs = cs;
  }
  final int? maxbr = jsonConvert.convert<int>(json['maxbr']);
  if (maxbr != null) {
    recommendSongsDataDailySongsPrivilege.maxbr = maxbr;
  }
  final int? fl = jsonConvert.convert<int>(json['fl']);
  if (fl != null) {
    recommendSongsDataDailySongsPrivilege.fl = fl;
  }
  final bool? toast = jsonConvert.convert<bool>(json['toast']);
  if (toast != null) {
    recommendSongsDataDailySongsPrivilege.toast = toast;
  }
  final int? flag = jsonConvert.convert<int>(json['flag']);
  if (flag != null) {
    recommendSongsDataDailySongsPrivilege.flag = flag;
  }
  final bool? preSell = jsonConvert.convert<bool>(json['preSell']);
  if (preSell != null) {
    recommendSongsDataDailySongsPrivilege.preSell = preSell;
  }
  final int? playMaxbr = jsonConvert.convert<int>(json['playMaxbr']);
  if (playMaxbr != null) {
    recommendSongsDataDailySongsPrivilege.playMaxbr = playMaxbr;
  }
  final int? downloadMaxbr = jsonConvert.convert<int>(json['downloadMaxbr']);
  if (downloadMaxbr != null) {
    recommendSongsDataDailySongsPrivilege.downloadMaxbr = downloadMaxbr;
  }
  final String? maxBrLevel = jsonConvert.convert<String>(json['maxBrLevel']);
  if (maxBrLevel != null) {
    recommendSongsDataDailySongsPrivilege.maxBrLevel = maxBrLevel;
  }
  final String? playMaxBrLevel = jsonConvert.convert<String>(
      json['playMaxBrLevel']);
  if (playMaxBrLevel != null) {
    recommendSongsDataDailySongsPrivilege.playMaxBrLevel = playMaxBrLevel;
  }
  final String? downloadMaxBrLevel = jsonConvert.convert<String>(
      json['downloadMaxBrLevel']);
  if (downloadMaxBrLevel != null) {
    recommendSongsDataDailySongsPrivilege.downloadMaxBrLevel =
        downloadMaxBrLevel;
  }
  final String? plLevel = jsonConvert.convert<String>(json['plLevel']);
  if (plLevel != null) {
    recommendSongsDataDailySongsPrivilege.plLevel = plLevel;
  }
  final String? dlLevel = jsonConvert.convert<String>(json['dlLevel']);
  if (dlLevel != null) {
    recommendSongsDataDailySongsPrivilege.dlLevel = dlLevel;
  }
  final String? flLevel = jsonConvert.convert<String>(json['flLevel']);
  if (flLevel != null) {
    recommendSongsDataDailySongsPrivilege.flLevel = flLevel;
  }
  final dynamic rscl = json['rscl'];
  if (rscl != null) {
    recommendSongsDataDailySongsPrivilege.rscl = rscl;
  }
  final RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege = jsonConvert
      .convert<RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege>(
      json['freeTrialPrivilege']);
  if (freeTrialPrivilege != null) {
    recommendSongsDataDailySongsPrivilege.freeTrialPrivilege =
        freeTrialPrivilege;
  }
  final List<
      RecommendSongsDataDailySongsPrivilegeChargeInfoList>? chargeInfoList = (json['chargeInfoList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          RecommendSongsDataDailySongsPrivilegeChargeInfoList>(
          e) as RecommendSongsDataDailySongsPrivilegeChargeInfoList).toList();
  if (chargeInfoList != null) {
    recommendSongsDataDailySongsPrivilege.chargeInfoList = chargeInfoList;
  }
  return recommendSongsDataDailySongsPrivilege;
}

Map<String, dynamic> $RecommendSongsDataDailySongsPrivilegeToJson(
    RecommendSongsDataDailySongsPrivilege entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['fee'] = entity.fee;
  data['payed'] = entity.payed;
  data['st'] = entity.st;
  data['pl'] = entity.pl;
  data['dl'] = entity.dl;
  data['sp'] = entity.sp;
  data['cp'] = entity.cp;
  data['subp'] = entity.subp;
  data['cs'] = entity.cs;
  data['maxbr'] = entity.maxbr;
  data['fl'] = entity.fl;
  data['toast'] = entity.toast;
  data['flag'] = entity.flag;
  data['preSell'] = entity.preSell;
  data['playMaxbr'] = entity.playMaxbr;
  data['downloadMaxbr'] = entity.downloadMaxbr;
  data['maxBrLevel'] = entity.maxBrLevel;
  data['playMaxBrLevel'] = entity.playMaxBrLevel;
  data['downloadMaxBrLevel'] = entity.downloadMaxBrLevel;
  data['plLevel'] = entity.plLevel;
  data['dlLevel'] = entity.dlLevel;
  data['flLevel'] = entity.flLevel;
  data['rscl'] = entity.rscl;
  data['freeTrialPrivilege'] = entity.freeTrialPrivilege?.toJson();
  data['chargeInfoList'] =
      entity.chargeInfoList?.map((v) => v.toJson()).toList();
  return data;
}

extension RecommendSongsDataDailySongsPrivilegeExtension on RecommendSongsDataDailySongsPrivilege {
  RecommendSongsDataDailySongsPrivilege copyWith({
    int? id,
    int? fee,
    int? payed,
    int? st,
    int? pl,
    int? dl,
    int? sp,
    int? cp,
    int? subp,
    bool? cs,
    int? maxbr,
    int? fl,
    bool? toast,
    int? flag,
    bool? preSell,
    int? playMaxbr,
    int? downloadMaxbr,
    String? maxBrLevel,
    String? playMaxBrLevel,
    String? downloadMaxBrLevel,
    String? plLevel,
    String? dlLevel,
    String? flLevel,
    dynamic rscl,
    RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege,
    List<RecommendSongsDataDailySongsPrivilegeChargeInfoList>? chargeInfoList,
  }) {
    return RecommendSongsDataDailySongsPrivilege()
      ..id = id ?? this.id
      ..fee = fee ?? this.fee
      ..payed = payed ?? this.payed
      ..st = st ?? this.st
      ..pl = pl ?? this.pl
      ..dl = dl ?? this.dl
      ..sp = sp ?? this.sp
      ..cp = cp ?? this.cp
      ..subp = subp ?? this.subp
      ..cs = cs ?? this.cs
      ..maxbr = maxbr ?? this.maxbr
      ..fl = fl ?? this.fl
      ..toast = toast ?? this.toast
      ..flag = flag ?? this.flag
      ..preSell = preSell ?? this.preSell
      ..playMaxbr = playMaxbr ?? this.playMaxbr
      ..downloadMaxbr = downloadMaxbr ?? this.downloadMaxbr
      ..maxBrLevel = maxBrLevel ?? this.maxBrLevel
      ..playMaxBrLevel = playMaxBrLevel ?? this.playMaxBrLevel
      ..downloadMaxBrLevel = downloadMaxBrLevel ?? this.downloadMaxBrLevel
      ..plLevel = plLevel ?? this.plLevel
      ..dlLevel = dlLevel ?? this.dlLevel
      ..flLevel = flLevel ?? this.flLevel
      ..rscl = rscl ?? this.rscl
      ..freeTrialPrivilege = freeTrialPrivilege ?? this.freeTrialPrivilege
      ..chargeInfoList = chargeInfoList ?? this.chargeInfoList;
  }
}

RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege $RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilegeFromJson(
    Map<String, dynamic> json) {
  final RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege recommendSongsDataDailySongsPrivilegeFreeTrialPrivilege = RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege();
  final bool? resConsumable = jsonConvert.convert<bool>(json['resConsumable']);
  if (resConsumable != null) {
    recommendSongsDataDailySongsPrivilegeFreeTrialPrivilege.resConsumable =
        resConsumable;
  }
  final bool? userConsumable = jsonConvert.convert<bool>(
      json['userConsumable']);
  if (userConsumable != null) {
    recommendSongsDataDailySongsPrivilegeFreeTrialPrivilege.userConsumable =
        userConsumable;
  }
  final dynamic listenType = json['listenType'];
  if (listenType != null) {
    recommendSongsDataDailySongsPrivilegeFreeTrialPrivilege.listenType =
        listenType;
  }
  return recommendSongsDataDailySongsPrivilegeFreeTrialPrivilege;
}

Map<String,
    dynamic> $RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilegeToJson(
    RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['resConsumable'] = entity.resConsumable;
  data['userConsumable'] = entity.userConsumable;
  data['listenType'] = entity.listenType;
  return data;
}

extension RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilegeExtension on RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege {
  RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege copyWith({
    bool? resConsumable,
    bool? userConsumable,
    dynamic listenType,
  }) {
    return RecommendSongsDataDailySongsPrivilegeFreeTrialPrivilege()
      ..resConsumable = resConsumable ?? this.resConsumable
      ..userConsumable = userConsumable ?? this.userConsumable
      ..listenType = listenType ?? this.listenType;
  }
}

RecommendSongsDataDailySongsPrivilegeChargeInfoList $RecommendSongsDataDailySongsPrivilegeChargeInfoListFromJson(
    Map<String, dynamic> json) {
  final RecommendSongsDataDailySongsPrivilegeChargeInfoList recommendSongsDataDailySongsPrivilegeChargeInfoList = RecommendSongsDataDailySongsPrivilegeChargeInfoList();
  final int? rate = jsonConvert.convert<int>(json['rate']);
  if (rate != null) {
    recommendSongsDataDailySongsPrivilegeChargeInfoList.rate = rate;
  }
  final dynamic chargeUrl = json['chargeUrl'];
  if (chargeUrl != null) {
    recommendSongsDataDailySongsPrivilegeChargeInfoList.chargeUrl = chargeUrl;
  }
  final dynamic chargeMessage = json['chargeMessage'];
  if (chargeMessage != null) {
    recommendSongsDataDailySongsPrivilegeChargeInfoList.chargeMessage =
        chargeMessage;
  }
  final int? chargeType = jsonConvert.convert<int>(json['chargeType']);
  if (chargeType != null) {
    recommendSongsDataDailySongsPrivilegeChargeInfoList.chargeType = chargeType;
  }
  return recommendSongsDataDailySongsPrivilegeChargeInfoList;
}

Map<String, dynamic> $RecommendSongsDataDailySongsPrivilegeChargeInfoListToJson(
    RecommendSongsDataDailySongsPrivilegeChargeInfoList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['rate'] = entity.rate;
  data['chargeUrl'] = entity.chargeUrl;
  data['chargeMessage'] = entity.chargeMessage;
  data['chargeType'] = entity.chargeType;
  return data;
}

extension RecommendSongsDataDailySongsPrivilegeChargeInfoListExtension on RecommendSongsDataDailySongsPrivilegeChargeInfoList {
  RecommendSongsDataDailySongsPrivilegeChargeInfoList copyWith({
    int? rate,
    dynamic chargeUrl,
    dynamic chargeMessage,
    int? chargeType,
  }) {
    return RecommendSongsDataDailySongsPrivilegeChargeInfoList()
      ..rate = rate ?? this.rate
      ..chargeUrl = chargeUrl ?? this.chargeUrl
      ..chargeMessage = chargeMessage ?? this.chargeMessage
      ..chargeType = chargeType ?? this.chargeType;
  }
}

RecommendSongsDataRecommendReasons $RecommendSongsDataRecommendReasonsFromJson(
    Map<String, dynamic> json) {
  final RecommendSongsDataRecommendReasons recommendSongsDataRecommendReasons = RecommendSongsDataRecommendReasons();
  final int? songId = jsonConvert.convert<int>(json['songId']);
  if (songId != null) {
    recommendSongsDataRecommendReasons.songId = songId;
  }
  final String? reason = jsonConvert.convert<String>(json['reason']);
  if (reason != null) {
    recommendSongsDataRecommendReasons.reason = reason;
  }
  final String? reasonId = jsonConvert.convert<String>(json['reasonId']);
  if (reasonId != null) {
    recommendSongsDataRecommendReasons.reasonId = reasonId;
  }
  final dynamic targetUrl = json['targetUrl'];
  if (targetUrl != null) {
    recommendSongsDataRecommendReasons.targetUrl = targetUrl;
  }
  return recommendSongsDataRecommendReasons;
}

Map<String, dynamic> $RecommendSongsDataRecommendReasonsToJson(
    RecommendSongsDataRecommendReasons entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['songId'] = entity.songId;
  data['reason'] = entity.reason;
  data['reasonId'] = entity.reasonId;
  data['targetUrl'] = entity.targetUrl;
  return data;
}

extension RecommendSongsDataRecommendReasonsExtension on RecommendSongsDataRecommendReasons {
  RecommendSongsDataRecommendReasons copyWith({
    int? songId,
    String? reason,
    String? reasonId,
    dynamic targetUrl,
  }) {
    return RecommendSongsDataRecommendReasons()
      ..songId = songId ?? this.songId
      ..reason = reason ?? this.reason
      ..reasonId = reasonId ?? this.reasonId
      ..targetUrl = targetUrl ?? this.targetUrl;
  }
}