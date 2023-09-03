import 'package:flutter_realm_music/generated/json/base/json_convert_content.dart';
import 'package:flutter_realm_music/api/response/artist_detail_entity.dart';
import 'package:flutter_realm_music/entity/i_album.dart';

import 'package:flutter_realm_music/entity/i_artist.dart';

import 'package:flutter_realm_music/entity/i_song.dart';


ArtistDetailEntity $ArtistDetailEntityFromJson(Map<String, dynamic> json) {
  final ArtistDetailEntity artistDetailEntity = ArtistDetailEntity();
  final ArtistDetailArtist? artist = jsonConvert.convert<ArtistDetailArtist>(
      json['artist']);
  if (artist != null) {
    artistDetailEntity.artist = artist;
  }
  final List<ArtistDetailHotSongs>? hotSongs = (json['hotSongs'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<ArtistDetailHotSongs>(e) as ArtistDetailHotSongs)
      .toList();
  if (hotSongs != null) {
    artistDetailEntity.hotSongs = hotSongs;
  }
  final bool? more = jsonConvert.convert<bool>(json['more']);
  if (more != null) {
    artistDetailEntity.more = more;
  }
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    artistDetailEntity.code = code;
  }
  return artistDetailEntity;
}

Map<String, dynamic> $ArtistDetailEntityToJson(ArtistDetailEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['artist'] = entity.artist?.toJson();
  data['hotSongs'] = entity.hotSongs?.map((v) => v.toJson()).toList();
  data['more'] = entity.more;
  data['code'] = entity.code;
  return data;
}

extension ArtistDetailEntityExtension on ArtistDetailEntity {
  ArtistDetailEntity copyWith({
    ArtistDetailArtist? artist,
    List<ArtistDetailHotSongs>? hotSongs,
    bool? more,
    int? code,
  }) {
    return ArtistDetailEntity()
      ..artist = artist ?? this.artist
      ..hotSongs = hotSongs ?? this.hotSongs
      ..more = more ?? this.more
      ..code = code ?? this.code;
  }
}

ArtistDetailArtist $ArtistDetailArtistFromJson(Map<String, dynamic> json) {
  final ArtistDetailArtist artistDetailArtist = ArtistDetailArtist();
  final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
  if (img1v1Id != null) {
    artistDetailArtist.img1v1Id = img1v1Id;
  }
  final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
  if (topicPerson != null) {
    artistDetailArtist.topicPerson = topicPerson;
  }
  final bool? followed = jsonConvert.convert<bool>(json['followed']);
  if (followed != null) {
    artistDetailArtist.followed = followed;
  }
  final List<String>? alias = (json['alias'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (alias != null) {
    artistDetailArtist.alias = alias;
  }
  final int? picId = jsonConvert.convert<int>(json['picId']);
  if (picId != null) {
    artistDetailArtist.picId = picId;
  }
  final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
  if (musicSize != null) {
    artistDetailArtist.musicSize = musicSize;
  }
  final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
  if (albumSize != null) {
    artistDetailArtist.albumSize = albumSize;
  }
  final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
  if (briefDesc != null) {
    artistDetailArtist.briefDesc = briefDesc;
  }
  final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
  if (picUrl != null) {
    artistDetailArtist.picUrl = picUrl;
  }
  final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
  if (img1v1Url != null) {
    artistDetailArtist.img1v1Url = img1v1Url;
  }
  final String? trans = jsonConvert.convert<String>(json['trans']);
  if (trans != null) {
    artistDetailArtist.trans = trans;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    artistDetailArtist.name = name;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    artistDetailArtist.id = id;
  }
  final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
  if (publishTime != null) {
    artistDetailArtist.publishTime = publishTime;
  }
  final String? picidStr = jsonConvert.convert<String>(json['picId_str']);
  if (picidStr != null) {
    artistDetailArtist.picidStr = picidStr;
  }
  final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
  if (img1v1idStr != null) {
    artistDetailArtist.img1v1idStr = img1v1idStr;
  }
  final int? mvSize = jsonConvert.convert<int>(json['mvSize']);
  if (mvSize != null) {
    artistDetailArtist.mvSize = mvSize;
  }
  return artistDetailArtist;
}

Map<String, dynamic> $ArtistDetailArtistToJson(ArtistDetailArtist entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['img1v1Id'] = entity.img1v1Id;
  data['topicPerson'] = entity.topicPerson;
  data['followed'] = entity.followed;
  data['alias'] = entity.alias;
  data['picId'] = entity.picId;
  data['musicSize'] = entity.musicSize;
  data['albumSize'] = entity.albumSize;
  data['briefDesc'] = entity.briefDesc;
  data['picUrl'] = entity.picUrl;
  data['img1v1Url'] = entity.img1v1Url;
  data['trans'] = entity.trans;
  data['name'] = entity.name;
  data['id'] = entity.id;
  data['publishTime'] = entity.publishTime;
  data['picId_str'] = entity.picidStr;
  data['img1v1Id_str'] = entity.img1v1idStr;
  data['mvSize'] = entity.mvSize;
  return data;
}

extension ArtistDetailArtistExtension on ArtistDetailArtist {
  ArtistDetailArtist copyWith({
    int? img1v1Id,
    int? topicPerson,
    bool? followed,
    List<String>? alias,
    int? picId,
    int? musicSize,
    int? albumSize,
    String? briefDesc,
    String? picUrl,
    String? img1v1Url,
    String? trans,
    String? name,
    int? id,
    int? publishTime,
    String? picidStr,
    String? img1v1idStr,
    int? mvSize,
  }) {
    return ArtistDetailArtist()
      ..img1v1Id = img1v1Id ?? this.img1v1Id
      ..topicPerson = topicPerson ?? this.topicPerson
      ..followed = followed ?? this.followed
      ..alias = alias ?? this.alias
      ..picId = picId ?? this.picId
      ..musicSize = musicSize ?? this.musicSize
      ..albumSize = albumSize ?? this.albumSize
      ..briefDesc = briefDesc ?? this.briefDesc
      ..picUrl = picUrl ?? this.picUrl
      ..img1v1Url = img1v1Url ?? this.img1v1Url
      ..trans = trans ?? this.trans
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..publishTime = publishTime ?? this.publishTime
      ..picidStr = picidStr ?? this.picidStr
      ..img1v1idStr = img1v1idStr ?? this.img1v1idStr
      ..mvSize = mvSize ?? this.mvSize;
  }
}

ArtistDetailHotSongs $ArtistDetailHotSongsFromJson(Map<String, dynamic> json) {
  final ArtistDetailHotSongs artistDetailHotSongs = ArtistDetailHotSongs();
  final List<dynamic>? rtUrls = (json['rtUrls'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (rtUrls != null) {
    artistDetailHotSongs.rtUrls = rtUrls;
  }
  final List<ArtistDetailHotSongsAr>? ar = (json['ar'] as List<dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<ArtistDetailHotSongsAr>(e) as ArtistDetailHotSongsAr)
      .toList();
  if (ar != null) {
    artistDetailHotSongs.ar = ar;
  }
  final ArtistDetailHotSongsAl? al = jsonConvert.convert<
      ArtistDetailHotSongsAl>(json['al']);
  if (al != null) {
    artistDetailHotSongs.al = al;
  }
  final int? st = jsonConvert.convert<int>(json['st']);
  if (st != null) {
    artistDetailHotSongs.st = st;
  }
  final dynamic noCopyrightRcmd = json['noCopyrightRcmd'];
  if (noCopyrightRcmd != null) {
    artistDetailHotSongs.noCopyrightRcmd = noCopyrightRcmd;
  }
  final dynamic songJumpInfo = json['songJumpInfo'];
  if (songJumpInfo != null) {
    artistDetailHotSongs.songJumpInfo = songJumpInfo;
  }
  final dynamic rurl = json['rurl'];
  if (rurl != null) {
    artistDetailHotSongs.rurl = rurl;
  }
  final int? pst = jsonConvert.convert<int>(json['pst']);
  if (pst != null) {
    artistDetailHotSongs.pst = pst;
  }
  final List<dynamic>? alia = (json['alia'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (alia != null) {
    artistDetailHotSongs.alia = alia;
  }
  final int? pop = jsonConvert.convert<int>(json['pop']);
  if (pop != null) {
    artistDetailHotSongs.pop = pop;
  }
  final String? rt = jsonConvert.convert<String>(json['rt']);
  if (rt != null) {
    artistDetailHotSongs.rt = rt;
  }
  final int? mst = jsonConvert.convert<int>(json['mst']);
  if (mst != null) {
    artistDetailHotSongs.mst = mst;
  }
  final int? cp = jsonConvert.convert<int>(json['cp']);
  if (cp != null) {
    artistDetailHotSongs.cp = cp;
  }
  final dynamic crbt = json['crbt'];
  if (crbt != null) {
    artistDetailHotSongs.crbt = crbt;
  }
  final String? cf = jsonConvert.convert<String>(json['cf']);
  if (cf != null) {
    artistDetailHotSongs.cf = cf;
  }
  final int? dt = jsonConvert.convert<int>(json['dt']);
  if (dt != null) {
    artistDetailHotSongs.dt = dt;
  }
  final ArtistDetailHotSongsH? h = jsonConvert.convert<ArtistDetailHotSongsH>(
      json['h']);
  if (h != null) {
    artistDetailHotSongs.h = h;
  }
  final ArtistDetailHotSongsSq? sq = jsonConvert.convert<
      ArtistDetailHotSongsSq>(json['sq']);
  if (sq != null) {
    artistDetailHotSongs.sq = sq;
  }
  final ArtistDetailHotSongsHr? hr = jsonConvert.convert<
      ArtistDetailHotSongsHr>(json['hr']);
  if (hr != null) {
    artistDetailHotSongs.hr = hr;
  }
  final ArtistDetailHotSongsL? l = jsonConvert.convert<ArtistDetailHotSongsL>(
      json['l']);
  if (l != null) {
    artistDetailHotSongs.l = l;
  }
  final dynamic rtUrl = json['rtUrl'];
  if (rtUrl != null) {
    artistDetailHotSongs.rtUrl = rtUrl;
  }
  final int? ftype = jsonConvert.convert<int>(json['ftype']);
  if (ftype != null) {
    artistDetailHotSongs.ftype = ftype;
  }
  final int? rtype = jsonConvert.convert<int>(json['rtype']);
  if (rtype != null) {
    artistDetailHotSongs.rtype = rtype;
  }
  final int? djId = jsonConvert.convert<int>(json['djId']);
  if (djId != null) {
    artistDetailHotSongs.djId = djId;
  }
  final int? no = jsonConvert.convert<int>(json['no']);
  if (no != null) {
    artistDetailHotSongs.no = no;
  }
  final int? fee = jsonConvert.convert<int>(json['fee']);
  if (fee != null) {
    artistDetailHotSongs.fee = fee;
  }
  final int? mv = jsonConvert.convert<int>(json['mv']);
  if (mv != null) {
    artistDetailHotSongs.mv = mv;
  }
  final int? t = jsonConvert.convert<int>(json['t']);
  if (t != null) {
    artistDetailHotSongs.t = t;
  }
  final int? v = jsonConvert.convert<int>(json['v']);
  if (v != null) {
    artistDetailHotSongs.v = v;
  }
  final String? cd = jsonConvert.convert<String>(json['cd']);
  if (cd != null) {
    artistDetailHotSongs.cd = cd;
  }
  final dynamic a = json['a'];
  if (a != null) {
    artistDetailHotSongs.a = a;
  }
  final ArtistDetailHotSongsM? m = jsonConvert.convert<ArtistDetailHotSongsM>(
      json['m']);
  if (m != null) {
    artistDetailHotSongs.m = m;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    artistDetailHotSongs.name = name;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    artistDetailHotSongs.id = id;
  }
  final ArtistDetailHotSongsPrivilege? privilege = jsonConvert.convert<
      ArtistDetailHotSongsPrivilege>(json['privilege']);
  if (privilege != null) {
    artistDetailHotSongs.privilege = privilege;
  }
  final List<String>? tns = (json['tns'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (tns != null) {
    artistDetailHotSongs.tns = tns;
  }
  final String? eq = jsonConvert.convert<String>(json['eq']);
  if (eq != null) {
    artistDetailHotSongs.eq = eq;
  }
  return artistDetailHotSongs;
}

Map<String, dynamic> $ArtistDetailHotSongsToJson(ArtistDetailHotSongs entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['rtUrls'] = entity.rtUrls;
  data['ar'] = entity.ar?.map((v) => v.toJson()).toList();
  data['al'] = entity.al?.toJson();
  data['st'] = entity.st;
  data['noCopyrightRcmd'] = entity.noCopyrightRcmd;
  data['songJumpInfo'] = entity.songJumpInfo;
  data['rurl'] = entity.rurl;
  data['pst'] = entity.pst;
  data['alia'] = entity.alia;
  data['pop'] = entity.pop;
  data['rt'] = entity.rt;
  data['mst'] = entity.mst;
  data['cp'] = entity.cp;
  data['crbt'] = entity.crbt;
  data['cf'] = entity.cf;
  data['dt'] = entity.dt;
  data['h'] = entity.h?.toJson();
  data['sq'] = entity.sq?.toJson();
  data['hr'] = entity.hr?.toJson();
  data['l'] = entity.l?.toJson();
  data['rtUrl'] = entity.rtUrl;
  data['ftype'] = entity.ftype;
  data['rtype'] = entity.rtype;
  data['djId'] = entity.djId;
  data['no'] = entity.no;
  data['fee'] = entity.fee;
  data['mv'] = entity.mv;
  data['t'] = entity.t;
  data['v'] = entity.v;
  data['cd'] = entity.cd;
  data['a'] = entity.a;
  data['m'] = entity.m?.toJson();
  data['name'] = entity.name;
  data['id'] = entity.id;
  data['privilege'] = entity.privilege?.toJson();
  data['tns'] = entity.tns;
  data['eq'] = entity.eq;
  return data;
}

extension ArtistDetailHotSongsExtension on ArtistDetailHotSongs {
  ArtistDetailHotSongs copyWith({
    List<dynamic>? rtUrls,
    List<ArtistDetailHotSongsAr>? ar,
    ArtistDetailHotSongsAl? al,
    int? st,
    dynamic noCopyrightRcmd,
    dynamic songJumpInfo,
    dynamic rurl,
    int? pst,
    List<dynamic>? alia,
    int? pop,
    String? rt,
    int? mst,
    int? cp,
    dynamic crbt,
    String? cf,
    int? dt,
    ArtistDetailHotSongsH? h,
    ArtistDetailHotSongsSq? sq,
    ArtistDetailHotSongsHr? hr,
    ArtistDetailHotSongsL? l,
    dynamic rtUrl,
    int? ftype,
    int? rtype,
    int? djId,
    int? no,
    int? fee,
    int? mv,
    int? t,
    int? v,
    String? cd,
    dynamic a,
    ArtistDetailHotSongsM? m,
    String? name,
    int? id,
    ArtistDetailHotSongsPrivilege? privilege,
    List<String>? tns,
    String? eq,
  }) {
    return ArtistDetailHotSongs()
      ..rtUrls = rtUrls ?? this.rtUrls
      ..ar = ar ?? this.ar
      ..al = al ?? this.al
      ..st = st ?? this.st
      ..noCopyrightRcmd = noCopyrightRcmd ?? this.noCopyrightRcmd
      ..songJumpInfo = songJumpInfo ?? this.songJumpInfo
      ..rurl = rurl ?? this.rurl
      ..pst = pst ?? this.pst
      ..alia = alia ?? this.alia
      ..pop = pop ?? this.pop
      ..rt = rt ?? this.rt
      ..mst = mst ?? this.mst
      ..cp = cp ?? this.cp
      ..crbt = crbt ?? this.crbt
      ..cf = cf ?? this.cf
      ..dt = dt ?? this.dt
      ..h = h ?? this.h
      ..sq = sq ?? this.sq
      ..hr = hr ?? this.hr
      ..l = l ?? this.l
      ..rtUrl = rtUrl ?? this.rtUrl
      ..ftype = ftype ?? this.ftype
      ..rtype = rtype ?? this.rtype
      ..djId = djId ?? this.djId
      ..no = no ?? this.no
      ..fee = fee ?? this.fee
      ..mv = mv ?? this.mv
      ..t = t ?? this.t
      ..v = v ?? this.v
      ..cd = cd ?? this.cd
      ..a = a ?? this.a
      ..m = m ?? this.m
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..privilege = privilege ?? this.privilege
      ..tns = tns ?? this.tns
      ..eq = eq ?? this.eq;
  }
}

ArtistDetailHotSongsAr $ArtistDetailHotSongsArFromJson(
    Map<String, dynamic> json) {
  final ArtistDetailHotSongsAr artistDetailHotSongsAr = ArtistDetailHotSongsAr();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    artistDetailHotSongsAr.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    artistDetailHotSongsAr.name = name;
  }
  final List<String>? alia = (json['alia'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (alia != null) {
    artistDetailHotSongsAr.alia = alia;
  }
  return artistDetailHotSongsAr;
}

Map<String, dynamic> $ArtistDetailHotSongsArToJson(
    ArtistDetailHotSongsAr entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['alia'] = entity.alia;
  return data;
}

extension ArtistDetailHotSongsArExtension on ArtistDetailHotSongsAr {
  ArtistDetailHotSongsAr copyWith({
    int? id,
    String? name,
    List<String>? alia,
  }) {
    return ArtistDetailHotSongsAr()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..alia = alia ?? this.alia;
  }
}

ArtistDetailHotSongsAl $ArtistDetailHotSongsAlFromJson(
    Map<String, dynamic> json) {
  final ArtistDetailHotSongsAl artistDetailHotSongsAl = ArtistDetailHotSongsAl();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    artistDetailHotSongsAl.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    artistDetailHotSongsAl.name = name;
  }
  final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
  if (picUrl != null) {
    artistDetailHotSongsAl.picUrl = picUrl;
  }
  final String? picStr = jsonConvert.convert<String>(json['pic_str']);
  if (picStr != null) {
    artistDetailHotSongsAl.picStr = picStr;
  }
  final int? pic = jsonConvert.convert<int>(json['pic']);
  if (pic != null) {
    artistDetailHotSongsAl.pic = pic;
  }
  return artistDetailHotSongsAl;
}

Map<String, dynamic> $ArtistDetailHotSongsAlToJson(
    ArtistDetailHotSongsAl entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['picUrl'] = entity.picUrl;
  data['pic_str'] = entity.picStr;
  data['pic'] = entity.pic;
  return data;
}

extension ArtistDetailHotSongsAlExtension on ArtistDetailHotSongsAl {
  ArtistDetailHotSongsAl copyWith({
    int? id,
    String? name,
    String? picUrl,
    String? picStr,
    int? pic,
  }) {
    return ArtistDetailHotSongsAl()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..picUrl = picUrl ?? this.picUrl
      ..picStr = picStr ?? this.picStr
      ..pic = pic ?? this.pic;
  }
}

ArtistDetailHotSongsH $ArtistDetailHotSongsHFromJson(
    Map<String, dynamic> json) {
  final ArtistDetailHotSongsH artistDetailHotSongsH = ArtistDetailHotSongsH();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    artistDetailHotSongsH.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    artistDetailHotSongsH.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    artistDetailHotSongsH.size = size;
  }
  final int? vd = jsonConvert.convert<int>(json['vd']);
  if (vd != null) {
    artistDetailHotSongsH.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    artistDetailHotSongsH.sr = sr;
  }
  return artistDetailHotSongsH;
}

Map<String, dynamic> $ArtistDetailHotSongsHToJson(
    ArtistDetailHotSongsH entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension ArtistDetailHotSongsHExtension on ArtistDetailHotSongsH {
  ArtistDetailHotSongsH copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
    int? sr,
  }) {
    return ArtistDetailHotSongsH()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

ArtistDetailHotSongsSq $ArtistDetailHotSongsSqFromJson(
    Map<String, dynamic> json) {
  final ArtistDetailHotSongsSq artistDetailHotSongsSq = ArtistDetailHotSongsSq();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    artistDetailHotSongsSq.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    artistDetailHotSongsSq.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    artistDetailHotSongsSq.size = size;
  }
  final int? vd = jsonConvert.convert<int>(json['vd']);
  if (vd != null) {
    artistDetailHotSongsSq.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    artistDetailHotSongsSq.sr = sr;
  }
  return artistDetailHotSongsSq;
}

Map<String, dynamic> $ArtistDetailHotSongsSqToJson(
    ArtistDetailHotSongsSq entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension ArtistDetailHotSongsSqExtension on ArtistDetailHotSongsSq {
  ArtistDetailHotSongsSq copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
    int? sr,
  }) {
    return ArtistDetailHotSongsSq()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

ArtistDetailHotSongsHr $ArtistDetailHotSongsHrFromJson(
    Map<String, dynamic> json) {
  final ArtistDetailHotSongsHr artistDetailHotSongsHr = ArtistDetailHotSongsHr();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    artistDetailHotSongsHr.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    artistDetailHotSongsHr.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    artistDetailHotSongsHr.size = size;
  }
  final int? vd = jsonConvert.convert<int>(json['vd']);
  if (vd != null) {
    artistDetailHotSongsHr.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    artistDetailHotSongsHr.sr = sr;
  }
  return artistDetailHotSongsHr;
}

Map<String, dynamic> $ArtistDetailHotSongsHrToJson(
    ArtistDetailHotSongsHr entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension ArtistDetailHotSongsHrExtension on ArtistDetailHotSongsHr {
  ArtistDetailHotSongsHr copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
    int? sr,
  }) {
    return ArtistDetailHotSongsHr()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

ArtistDetailHotSongsL $ArtistDetailHotSongsLFromJson(
    Map<String, dynamic> json) {
  final ArtistDetailHotSongsL artistDetailHotSongsL = ArtistDetailHotSongsL();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    artistDetailHotSongsL.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    artistDetailHotSongsL.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    artistDetailHotSongsL.size = size;
  }
  final int? vd = jsonConvert.convert<int>(json['vd']);
  if (vd != null) {
    artistDetailHotSongsL.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    artistDetailHotSongsL.sr = sr;
  }
  return artistDetailHotSongsL;
}

Map<String, dynamic> $ArtistDetailHotSongsLToJson(
    ArtistDetailHotSongsL entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension ArtistDetailHotSongsLExtension on ArtistDetailHotSongsL {
  ArtistDetailHotSongsL copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
    int? sr,
  }) {
    return ArtistDetailHotSongsL()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

ArtistDetailHotSongsM $ArtistDetailHotSongsMFromJson(
    Map<String, dynamic> json) {
  final ArtistDetailHotSongsM artistDetailHotSongsM = ArtistDetailHotSongsM();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    artistDetailHotSongsM.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    artistDetailHotSongsM.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    artistDetailHotSongsM.size = size;
  }
  final int? vd = jsonConvert.convert<int>(json['vd']);
  if (vd != null) {
    artistDetailHotSongsM.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    artistDetailHotSongsM.sr = sr;
  }
  return artistDetailHotSongsM;
}

Map<String, dynamic> $ArtistDetailHotSongsMToJson(
    ArtistDetailHotSongsM entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension ArtistDetailHotSongsMExtension on ArtistDetailHotSongsM {
  ArtistDetailHotSongsM copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
    int? sr,
  }) {
    return ArtistDetailHotSongsM()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

ArtistDetailHotSongsPrivilege $ArtistDetailHotSongsPrivilegeFromJson(
    Map<String, dynamic> json) {
  final ArtistDetailHotSongsPrivilege artistDetailHotSongsPrivilege = ArtistDetailHotSongsPrivilege();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    artistDetailHotSongsPrivilege.id = id;
  }
  final int? fee = jsonConvert.convert<int>(json['fee']);
  if (fee != null) {
    artistDetailHotSongsPrivilege.fee = fee;
  }
  final int? payed = jsonConvert.convert<int>(json['payed']);
  if (payed != null) {
    artistDetailHotSongsPrivilege.payed = payed;
  }
  final int? st = jsonConvert.convert<int>(json['st']);
  if (st != null) {
    artistDetailHotSongsPrivilege.st = st;
  }
  final int? pl = jsonConvert.convert<int>(json['pl']);
  if (pl != null) {
    artistDetailHotSongsPrivilege.pl = pl;
  }
  final int? dl = jsonConvert.convert<int>(json['dl']);
  if (dl != null) {
    artistDetailHotSongsPrivilege.dl = dl;
  }
  final int? sp = jsonConvert.convert<int>(json['sp']);
  if (sp != null) {
    artistDetailHotSongsPrivilege.sp = sp;
  }
  final int? cp = jsonConvert.convert<int>(json['cp']);
  if (cp != null) {
    artistDetailHotSongsPrivilege.cp = cp;
  }
  final int? subp = jsonConvert.convert<int>(json['subp']);
  if (subp != null) {
    artistDetailHotSongsPrivilege.subp = subp;
  }
  final bool? cs = jsonConvert.convert<bool>(json['cs']);
  if (cs != null) {
    artistDetailHotSongsPrivilege.cs = cs;
  }
  final int? maxbr = jsonConvert.convert<int>(json['maxbr']);
  if (maxbr != null) {
    artistDetailHotSongsPrivilege.maxbr = maxbr;
  }
  final int? fl = jsonConvert.convert<int>(json['fl']);
  if (fl != null) {
    artistDetailHotSongsPrivilege.fl = fl;
  }
  final bool? toast = jsonConvert.convert<bool>(json['toast']);
  if (toast != null) {
    artistDetailHotSongsPrivilege.toast = toast;
  }
  final int? flag = jsonConvert.convert<int>(json['flag']);
  if (flag != null) {
    artistDetailHotSongsPrivilege.flag = flag;
  }
  final bool? preSell = jsonConvert.convert<bool>(json['preSell']);
  if (preSell != null) {
    artistDetailHotSongsPrivilege.preSell = preSell;
  }
  final int? playMaxbr = jsonConvert.convert<int>(json['playMaxbr']);
  if (playMaxbr != null) {
    artistDetailHotSongsPrivilege.playMaxbr = playMaxbr;
  }
  final int? downloadMaxbr = jsonConvert.convert<int>(json['downloadMaxbr']);
  if (downloadMaxbr != null) {
    artistDetailHotSongsPrivilege.downloadMaxbr = downloadMaxbr;
  }
  final String? maxBrLevel = jsonConvert.convert<String>(json['maxBrLevel']);
  if (maxBrLevel != null) {
    artistDetailHotSongsPrivilege.maxBrLevel = maxBrLevel;
  }
  final String? playMaxBrLevel = jsonConvert.convert<String>(
      json['playMaxBrLevel']);
  if (playMaxBrLevel != null) {
    artistDetailHotSongsPrivilege.playMaxBrLevel = playMaxBrLevel;
  }
  final String? downloadMaxBrLevel = jsonConvert.convert<String>(
      json['downloadMaxBrLevel']);
  if (downloadMaxBrLevel != null) {
    artistDetailHotSongsPrivilege.downloadMaxBrLevel = downloadMaxBrLevel;
  }
  final String? plLevel = jsonConvert.convert<String>(json['plLevel']);
  if (plLevel != null) {
    artistDetailHotSongsPrivilege.plLevel = plLevel;
  }
  final String? dlLevel = jsonConvert.convert<String>(json['dlLevel']);
  if (dlLevel != null) {
    artistDetailHotSongsPrivilege.dlLevel = dlLevel;
  }
  final String? flLevel = jsonConvert.convert<String>(json['flLevel']);
  if (flLevel != null) {
    artistDetailHotSongsPrivilege.flLevel = flLevel;
  }
  final dynamic rscl = json['rscl'];
  if (rscl != null) {
    artistDetailHotSongsPrivilege.rscl = rscl;
  }
  final ArtistDetailHotSongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege = jsonConvert
      .convert<ArtistDetailHotSongsPrivilegeFreeTrialPrivilege>(
      json['freeTrialPrivilege']);
  if (freeTrialPrivilege != null) {
    artistDetailHotSongsPrivilege.freeTrialPrivilege = freeTrialPrivilege;
  }
  final List<
      ArtistDetailHotSongsPrivilegeChargeInfoList>? chargeInfoList = (json['chargeInfoList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<ArtistDetailHotSongsPrivilegeChargeInfoList>(
          e) as ArtistDetailHotSongsPrivilegeChargeInfoList).toList();
  if (chargeInfoList != null) {
    artistDetailHotSongsPrivilege.chargeInfoList = chargeInfoList;
  }
  return artistDetailHotSongsPrivilege;
}

Map<String, dynamic> $ArtistDetailHotSongsPrivilegeToJson(
    ArtistDetailHotSongsPrivilege entity) {
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

extension ArtistDetailHotSongsPrivilegeExtension on ArtistDetailHotSongsPrivilege {
  ArtistDetailHotSongsPrivilege copyWith({
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
    ArtistDetailHotSongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege,
    List<ArtistDetailHotSongsPrivilegeChargeInfoList>? chargeInfoList,
  }) {
    return ArtistDetailHotSongsPrivilege()
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

ArtistDetailHotSongsPrivilegeFreeTrialPrivilege $ArtistDetailHotSongsPrivilegeFreeTrialPrivilegeFromJson(
    Map<String, dynamic> json) {
  final ArtistDetailHotSongsPrivilegeFreeTrialPrivilege artistDetailHotSongsPrivilegeFreeTrialPrivilege = ArtistDetailHotSongsPrivilegeFreeTrialPrivilege();
  final bool? resConsumable = jsonConvert.convert<bool>(json['resConsumable']);
  if (resConsumable != null) {
    artistDetailHotSongsPrivilegeFreeTrialPrivilege.resConsumable =
        resConsumable;
  }
  final bool? userConsumable = jsonConvert.convert<bool>(
      json['userConsumable']);
  if (userConsumable != null) {
    artistDetailHotSongsPrivilegeFreeTrialPrivilege.userConsumable =
        userConsumable;
  }
  final dynamic listenType = json['listenType'];
  if (listenType != null) {
    artistDetailHotSongsPrivilegeFreeTrialPrivilege.listenType = listenType;
  }
  return artistDetailHotSongsPrivilegeFreeTrialPrivilege;
}

Map<String, dynamic> $ArtistDetailHotSongsPrivilegeFreeTrialPrivilegeToJson(
    ArtistDetailHotSongsPrivilegeFreeTrialPrivilege entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['resConsumable'] = entity.resConsumable;
  data['userConsumable'] = entity.userConsumable;
  data['listenType'] = entity.listenType;
  return data;
}

extension ArtistDetailHotSongsPrivilegeFreeTrialPrivilegeExtension on ArtistDetailHotSongsPrivilegeFreeTrialPrivilege {
  ArtistDetailHotSongsPrivilegeFreeTrialPrivilege copyWith({
    bool? resConsumable,
    bool? userConsumable,
    dynamic listenType,
  }) {
    return ArtistDetailHotSongsPrivilegeFreeTrialPrivilege()
      ..resConsumable = resConsumable ?? this.resConsumable
      ..userConsumable = userConsumable ?? this.userConsumable
      ..listenType = listenType ?? this.listenType;
  }
}

ArtistDetailHotSongsPrivilegeChargeInfoList $ArtistDetailHotSongsPrivilegeChargeInfoListFromJson(
    Map<String, dynamic> json) {
  final ArtistDetailHotSongsPrivilegeChargeInfoList artistDetailHotSongsPrivilegeChargeInfoList = ArtistDetailHotSongsPrivilegeChargeInfoList();
  final int? rate = jsonConvert.convert<int>(json['rate']);
  if (rate != null) {
    artistDetailHotSongsPrivilegeChargeInfoList.rate = rate;
  }
  final dynamic chargeUrl = json['chargeUrl'];
  if (chargeUrl != null) {
    artistDetailHotSongsPrivilegeChargeInfoList.chargeUrl = chargeUrl;
  }
  final dynamic chargeMessage = json['chargeMessage'];
  if (chargeMessage != null) {
    artistDetailHotSongsPrivilegeChargeInfoList.chargeMessage = chargeMessage;
  }
  final int? chargeType = jsonConvert.convert<int>(json['chargeType']);
  if (chargeType != null) {
    artistDetailHotSongsPrivilegeChargeInfoList.chargeType = chargeType;
  }
  return artistDetailHotSongsPrivilegeChargeInfoList;
}

Map<String, dynamic> $ArtistDetailHotSongsPrivilegeChargeInfoListToJson(
    ArtistDetailHotSongsPrivilegeChargeInfoList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['rate'] = entity.rate;
  data['chargeUrl'] = entity.chargeUrl;
  data['chargeMessage'] = entity.chargeMessage;
  data['chargeType'] = entity.chargeType;
  return data;
}

extension ArtistDetailHotSongsPrivilegeChargeInfoListExtension on ArtistDetailHotSongsPrivilegeChargeInfoList {
  ArtistDetailHotSongsPrivilegeChargeInfoList copyWith({
    int? rate,
    dynamic chargeUrl,
    dynamic chargeMessage,
    int? chargeType,
  }) {
    return ArtistDetailHotSongsPrivilegeChargeInfoList()
      ..rate = rate ?? this.rate
      ..chargeUrl = chargeUrl ?? this.chargeUrl
      ..chargeMessage = chargeMessage ?? this.chargeMessage
      ..chargeType = chargeType ?? this.chargeType;
  }
}