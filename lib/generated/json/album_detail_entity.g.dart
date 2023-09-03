import 'package:flutter_realm_music/generated/json/base/json_convert_content.dart';
import 'package:flutter_realm_music/api/response/album_detail_entity.dart';
import 'package:flutter_realm_music/entity/i_album.dart';

import 'package:flutter_realm_music/entity/i_artist.dart';

import 'package:flutter_realm_music/entity/i_song.dart';


AlbumDetailEntity $AlbumDetailEntityFromJson(Map<String, dynamic> json) {
  final AlbumDetailEntity albumDetailEntity = AlbumDetailEntity();
  final bool? resourceState = jsonConvert.convert<bool>(json['resourceState']);
  if (resourceState != null) {
    albumDetailEntity.resourceState = resourceState;
  }
  final List<AlbumDetailSongs>? songs = (json['songs'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<AlbumDetailSongs>(e) as AlbumDetailSongs)
      .toList();
  if (songs != null) {
    albumDetailEntity.songs = songs;
  }
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    albumDetailEntity.code = code;
  }
  final AlbumDetailAlbum? album = jsonConvert.convert<AlbumDetailAlbum>(
      json['album']);
  if (album != null) {
    albumDetailEntity.album = album;
  }
  return albumDetailEntity;
}

Map<String, dynamic> $AlbumDetailEntityToJson(AlbumDetailEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['resourceState'] = entity.resourceState;
  data['songs'] = entity.songs?.map((v) => v.toJson()).toList();
  data['code'] = entity.code;
  data['album'] = entity.album?.toJson();
  return data;
}

extension AlbumDetailEntityExtension on AlbumDetailEntity {
  AlbumDetailEntity copyWith({
    bool? resourceState,
    List<AlbumDetailSongs>? songs,
    int? code,
    AlbumDetailAlbum? album,
  }) {
    return AlbumDetailEntity()
      ..resourceState = resourceState ?? this.resourceState
      ..songs = songs ?? this.songs
      ..code = code ?? this.code
      ..album = album ?? this.album;
  }
}

AlbumDetailSongs $AlbumDetailSongsFromJson(Map<String, dynamic> json) {
  final AlbumDetailSongs albumDetailSongs = AlbumDetailSongs();
  final List<dynamic>? rtUrls = (json['rtUrls'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (rtUrls != null) {
    albumDetailSongs.rtUrls = rtUrls;
  }
  final List<AlbumDetailSongsAr>? ar = (json['ar'] as List<dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<AlbumDetailSongsAr>(e) as AlbumDetailSongsAr)
      .toList();
  if (ar != null) {
    albumDetailSongs.ar = ar;
  }
  final AlbumDetailSongsAl? al = jsonConvert.convert<AlbumDetailSongsAl>(
      json['al']);
  if (al != null) {
    albumDetailSongs.al = al;
  }
  final int? st = jsonConvert.convert<int>(json['st']);
  if (st != null) {
    albumDetailSongs.st = st;
  }
  final dynamic noCopyrightRcmd = json['noCopyrightRcmd'];
  if (noCopyrightRcmd != null) {
    albumDetailSongs.noCopyrightRcmd = noCopyrightRcmd;
  }
  final dynamic songJumpInfo = json['songJumpInfo'];
  if (songJumpInfo != null) {
    albumDetailSongs.songJumpInfo = songJumpInfo;
  }
  final int? rtype = jsonConvert.convert<int>(json['rtype']);
  if (rtype != null) {
    albumDetailSongs.rtype = rtype;
  }
  final dynamic rurl = json['rurl'];
  if (rurl != null) {
    albumDetailSongs.rurl = rurl;
  }
  final int? pst = jsonConvert.convert<int>(json['pst']);
  if (pst != null) {
    albumDetailSongs.pst = pst;
  }
  final List<dynamic>? alia = (json['alia'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (alia != null) {
    albumDetailSongs.alia = alia;
  }
  final int? pop = jsonConvert.convert<int>(json['pop']);
  if (pop != null) {
    albumDetailSongs.pop = pop;
  }
  final String? rt = jsonConvert.convert<String>(json['rt']);
  if (rt != null) {
    albumDetailSongs.rt = rt;
  }
  final int? mst = jsonConvert.convert<int>(json['mst']);
  if (mst != null) {
    albumDetailSongs.mst = mst;
  }
  final int? cp = jsonConvert.convert<int>(json['cp']);
  if (cp != null) {
    albumDetailSongs.cp = cp;
  }
  final dynamic crbt = json['crbt'];
  if (crbt != null) {
    albumDetailSongs.crbt = crbt;
  }
  final String? cf = jsonConvert.convert<String>(json['cf']);
  if (cf != null) {
    albumDetailSongs.cf = cf;
  }
  final int? dt = jsonConvert.convert<int>(json['dt']);
  if (dt != null) {
    albumDetailSongs.dt = dt;
  }
  final AlbumDetailSongsH? h = jsonConvert.convert<AlbumDetailSongsH>(
      json['h']);
  if (h != null) {
    albumDetailSongs.h = h;
  }
  final AlbumDetailSongsSq? sq = jsonConvert.convert<AlbumDetailSongsSq>(
      json['sq']);
  if (sq != null) {
    albumDetailSongs.sq = sq;
  }
  final dynamic hr = json['hr'];
  if (hr != null) {
    albumDetailSongs.hr = hr;
  }
  final AlbumDetailSongsL? l = jsonConvert.convert<AlbumDetailSongsL>(
      json['l']);
  if (l != null) {
    albumDetailSongs.l = l;
  }
  final dynamic rtUrl = json['rtUrl'];
  if (rtUrl != null) {
    albumDetailSongs.rtUrl = rtUrl;
  }
  final int? ftype = jsonConvert.convert<int>(json['ftype']);
  if (ftype != null) {
    albumDetailSongs.ftype = ftype;
  }
  final int? djId = jsonConvert.convert<int>(json['djId']);
  if (djId != null) {
    albumDetailSongs.djId = djId;
  }
  final int? no = jsonConvert.convert<int>(json['no']);
  if (no != null) {
    albumDetailSongs.no = no;
  }
  final int? fee = jsonConvert.convert<int>(json['fee']);
  if (fee != null) {
    albumDetailSongs.fee = fee;
  }
  final int? mv = jsonConvert.convert<int>(json['mv']);
  if (mv != null) {
    albumDetailSongs.mv = mv;
  }
  final int? t = jsonConvert.convert<int>(json['t']);
  if (t != null) {
    albumDetailSongs.t = t;
  }
  final int? v = jsonConvert.convert<int>(json['v']);
  if (v != null) {
    albumDetailSongs.v = v;
  }
  final String? cd = jsonConvert.convert<String>(json['cd']);
  if (cd != null) {
    albumDetailSongs.cd = cd;
  }
  final dynamic a = json['a'];
  if (a != null) {
    albumDetailSongs.a = a;
  }
  final AlbumDetailSongsM? m = jsonConvert.convert<AlbumDetailSongsM>(
      json['m']);
  if (m != null) {
    albumDetailSongs.m = m;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    albumDetailSongs.name = name;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    albumDetailSongs.id = id;
  }
  final AlbumDetailSongsPrivilege? privilege = jsonConvert.convert<
      AlbumDetailSongsPrivilege>(json['privilege']);
  if (privilege != null) {
    albumDetailSongs.privilege = privilege;
  }
  return albumDetailSongs;
}

Map<String, dynamic> $AlbumDetailSongsToJson(AlbumDetailSongs entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['rtUrls'] = entity.rtUrls;
  data['ar'] = entity.ar?.map((v) => v.toJson()).toList();
  data['al'] = entity.al?.toJson();
  data['st'] = entity.st;
  data['noCopyrightRcmd'] = entity.noCopyrightRcmd;
  data['songJumpInfo'] = entity.songJumpInfo;
  data['rtype'] = entity.rtype;
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
  data['hr'] = entity.hr;
  data['l'] = entity.l?.toJson();
  data['rtUrl'] = entity.rtUrl;
  data['ftype'] = entity.ftype;
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
  return data;
}

extension AlbumDetailSongsExtension on AlbumDetailSongs {
  AlbumDetailSongs copyWith({
    List<dynamic>? rtUrls,
    List<AlbumDetailSongsAr>? ar,
    AlbumDetailSongsAl? al,
    int? st,
    dynamic noCopyrightRcmd,
    dynamic songJumpInfo,
    int? rtype,
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
    AlbumDetailSongsH? h,
    AlbumDetailSongsSq? sq,
    dynamic hr,
    AlbumDetailSongsL? l,
    dynamic rtUrl,
    int? ftype,
    int? djId,
    int? no,
    int? fee,
    int? mv,
    int? t,
    int? v,
    String? cd,
    dynamic a,
    AlbumDetailSongsM? m,
    String? name,
    int? id,
    AlbumDetailSongsPrivilege? privilege,
  }) {
    return AlbumDetailSongs()
      ..rtUrls = rtUrls ?? this.rtUrls
      ..ar = ar ?? this.ar
      ..al = al ?? this.al
      ..st = st ?? this.st
      ..noCopyrightRcmd = noCopyrightRcmd ?? this.noCopyrightRcmd
      ..songJumpInfo = songJumpInfo ?? this.songJumpInfo
      ..rtype = rtype ?? this.rtype
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
      ..privilege = privilege ?? this.privilege;
  }
}

AlbumDetailSongsAr $AlbumDetailSongsArFromJson(Map<String, dynamic> json) {
  final AlbumDetailSongsAr albumDetailSongsAr = AlbumDetailSongsAr();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    albumDetailSongsAr.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    albumDetailSongsAr.name = name;
  }
  final List<String>? alia = (json['alia'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (alia != null) {
    albumDetailSongsAr.alia = alia;
  }
  return albumDetailSongsAr;
}

Map<String, dynamic> $AlbumDetailSongsArToJson(AlbumDetailSongsAr entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['alia'] = entity.alia;
  return data;
}

extension AlbumDetailSongsArExtension on AlbumDetailSongsAr {
  AlbumDetailSongsAr copyWith({
    int? id,
    String? name,
    List<String>? alia,
  }) {
    return AlbumDetailSongsAr()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..alia = alia ?? this.alia;
  }
}

AlbumDetailSongsAl $AlbumDetailSongsAlFromJson(Map<String, dynamic> json) {
  final AlbumDetailSongsAl albumDetailSongsAl = AlbumDetailSongsAl();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    albumDetailSongsAl.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    albumDetailSongsAl.name = name;
  }
  final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
  if (picUrl != null) {
    albumDetailSongsAl.picUrl = picUrl;
  }
  final String? picStr = jsonConvert.convert<String>(json['pic_str']);
  if (picStr != null) {
    albumDetailSongsAl.picStr = picStr;
  }
  final int? pic = jsonConvert.convert<int>(json['pic']);
  if (pic != null) {
    albumDetailSongsAl.pic = pic;
  }
  return albumDetailSongsAl;
}

Map<String, dynamic> $AlbumDetailSongsAlToJson(AlbumDetailSongsAl entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['picUrl'] = entity.picUrl;
  data['pic_str'] = entity.picStr;
  data['pic'] = entity.pic;
  return data;
}

extension AlbumDetailSongsAlExtension on AlbumDetailSongsAl {
  AlbumDetailSongsAl copyWith({
    int? id,
    String? name,
    String? picUrl,
    String? picStr,
    int? pic,
  }) {
    return AlbumDetailSongsAl()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..picUrl = picUrl ?? this.picUrl
      ..picStr = picStr ?? this.picStr
      ..pic = pic ?? this.pic;
  }
}

AlbumDetailSongsH $AlbumDetailSongsHFromJson(Map<String, dynamic> json) {
  final AlbumDetailSongsH albumDetailSongsH = AlbumDetailSongsH();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    albumDetailSongsH.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    albumDetailSongsH.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    albumDetailSongsH.size = size;
  }
  final int? vd = jsonConvert.convert<int>(json['vd']);
  if (vd != null) {
    albumDetailSongsH.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    albumDetailSongsH.sr = sr;
  }
  return albumDetailSongsH;
}

Map<String, dynamic> $AlbumDetailSongsHToJson(AlbumDetailSongsH entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension AlbumDetailSongsHExtension on AlbumDetailSongsH {
  AlbumDetailSongsH copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
    int? sr,
  }) {
    return AlbumDetailSongsH()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

AlbumDetailSongsSq $AlbumDetailSongsSqFromJson(Map<String, dynamic> json) {
  final AlbumDetailSongsSq albumDetailSongsSq = AlbumDetailSongsSq();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    albumDetailSongsSq.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    albumDetailSongsSq.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    albumDetailSongsSq.size = size;
  }
  final int? vd = jsonConvert.convert<int>(json['vd']);
  if (vd != null) {
    albumDetailSongsSq.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    albumDetailSongsSq.sr = sr;
  }
  return albumDetailSongsSq;
}

Map<String, dynamic> $AlbumDetailSongsSqToJson(AlbumDetailSongsSq entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension AlbumDetailSongsSqExtension on AlbumDetailSongsSq {
  AlbumDetailSongsSq copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
    int? sr,
  }) {
    return AlbumDetailSongsSq()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

AlbumDetailSongsL $AlbumDetailSongsLFromJson(Map<String, dynamic> json) {
  final AlbumDetailSongsL albumDetailSongsL = AlbumDetailSongsL();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    albumDetailSongsL.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    albumDetailSongsL.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    albumDetailSongsL.size = size;
  }
  final int? vd = jsonConvert.convert<int>(json['vd']);
  if (vd != null) {
    albumDetailSongsL.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    albumDetailSongsL.sr = sr;
  }
  return albumDetailSongsL;
}

Map<String, dynamic> $AlbumDetailSongsLToJson(AlbumDetailSongsL entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension AlbumDetailSongsLExtension on AlbumDetailSongsL {
  AlbumDetailSongsL copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
    int? sr,
  }) {
    return AlbumDetailSongsL()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

AlbumDetailSongsM $AlbumDetailSongsMFromJson(Map<String, dynamic> json) {
  final AlbumDetailSongsM albumDetailSongsM = AlbumDetailSongsM();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    albumDetailSongsM.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    albumDetailSongsM.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    albumDetailSongsM.size = size;
  }
  final int? vd = jsonConvert.convert<int>(json['vd']);
  if (vd != null) {
    albumDetailSongsM.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    albumDetailSongsM.sr = sr;
  }
  return albumDetailSongsM;
}

Map<String, dynamic> $AlbumDetailSongsMToJson(AlbumDetailSongsM entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension AlbumDetailSongsMExtension on AlbumDetailSongsM {
  AlbumDetailSongsM copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
    int? sr,
  }) {
    return AlbumDetailSongsM()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

AlbumDetailSongsPrivilege $AlbumDetailSongsPrivilegeFromJson(
    Map<String, dynamic> json) {
  final AlbumDetailSongsPrivilege albumDetailSongsPrivilege = AlbumDetailSongsPrivilege();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    albumDetailSongsPrivilege.id = id;
  }
  final int? fee = jsonConvert.convert<int>(json['fee']);
  if (fee != null) {
    albumDetailSongsPrivilege.fee = fee;
  }
  final int? payed = jsonConvert.convert<int>(json['payed']);
  if (payed != null) {
    albumDetailSongsPrivilege.payed = payed;
  }
  final int? st = jsonConvert.convert<int>(json['st']);
  if (st != null) {
    albumDetailSongsPrivilege.st = st;
  }
  final int? pl = jsonConvert.convert<int>(json['pl']);
  if (pl != null) {
    albumDetailSongsPrivilege.pl = pl;
  }
  final int? dl = jsonConvert.convert<int>(json['dl']);
  if (dl != null) {
    albumDetailSongsPrivilege.dl = dl;
  }
  final int? sp = jsonConvert.convert<int>(json['sp']);
  if (sp != null) {
    albumDetailSongsPrivilege.sp = sp;
  }
  final int? cp = jsonConvert.convert<int>(json['cp']);
  if (cp != null) {
    albumDetailSongsPrivilege.cp = cp;
  }
  final int? subp = jsonConvert.convert<int>(json['subp']);
  if (subp != null) {
    albumDetailSongsPrivilege.subp = subp;
  }
  final bool? cs = jsonConvert.convert<bool>(json['cs']);
  if (cs != null) {
    albumDetailSongsPrivilege.cs = cs;
  }
  final int? maxbr = jsonConvert.convert<int>(json['maxbr']);
  if (maxbr != null) {
    albumDetailSongsPrivilege.maxbr = maxbr;
  }
  final int? fl = jsonConvert.convert<int>(json['fl']);
  if (fl != null) {
    albumDetailSongsPrivilege.fl = fl;
  }
  final bool? toast = jsonConvert.convert<bool>(json['toast']);
  if (toast != null) {
    albumDetailSongsPrivilege.toast = toast;
  }
  final int? flag = jsonConvert.convert<int>(json['flag']);
  if (flag != null) {
    albumDetailSongsPrivilege.flag = flag;
  }
  final bool? preSell = jsonConvert.convert<bool>(json['preSell']);
  if (preSell != null) {
    albumDetailSongsPrivilege.preSell = preSell;
  }
  final int? playMaxbr = jsonConvert.convert<int>(json['playMaxbr']);
  if (playMaxbr != null) {
    albumDetailSongsPrivilege.playMaxbr = playMaxbr;
  }
  final int? downloadMaxbr = jsonConvert.convert<int>(json['downloadMaxbr']);
  if (downloadMaxbr != null) {
    albumDetailSongsPrivilege.downloadMaxbr = downloadMaxbr;
  }
  final String? maxBrLevel = jsonConvert.convert<String>(json['maxBrLevel']);
  if (maxBrLevel != null) {
    albumDetailSongsPrivilege.maxBrLevel = maxBrLevel;
  }
  final String? playMaxBrLevel = jsonConvert.convert<String>(
      json['playMaxBrLevel']);
  if (playMaxBrLevel != null) {
    albumDetailSongsPrivilege.playMaxBrLevel = playMaxBrLevel;
  }
  final String? downloadMaxBrLevel = jsonConvert.convert<String>(
      json['downloadMaxBrLevel']);
  if (downloadMaxBrLevel != null) {
    albumDetailSongsPrivilege.downloadMaxBrLevel = downloadMaxBrLevel;
  }
  final String? plLevel = jsonConvert.convert<String>(json['plLevel']);
  if (plLevel != null) {
    albumDetailSongsPrivilege.plLevel = plLevel;
  }
  final String? dlLevel = jsonConvert.convert<String>(json['dlLevel']);
  if (dlLevel != null) {
    albumDetailSongsPrivilege.dlLevel = dlLevel;
  }
  final String? flLevel = jsonConvert.convert<String>(json['flLevel']);
  if (flLevel != null) {
    albumDetailSongsPrivilege.flLevel = flLevel;
  }
  final dynamic rscl = json['rscl'];
  if (rscl != null) {
    albumDetailSongsPrivilege.rscl = rscl;
  }
  final AlbumDetailSongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege = jsonConvert
      .convert<AlbumDetailSongsPrivilegeFreeTrialPrivilege>(
      json['freeTrialPrivilege']);
  if (freeTrialPrivilege != null) {
    albumDetailSongsPrivilege.freeTrialPrivilege = freeTrialPrivilege;
  }
  final List<
      AlbumDetailSongsPrivilegeChargeInfoList>? chargeInfoList = (json['chargeInfoList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AlbumDetailSongsPrivilegeChargeInfoList>(
          e) as AlbumDetailSongsPrivilegeChargeInfoList).toList();
  if (chargeInfoList != null) {
    albumDetailSongsPrivilege.chargeInfoList = chargeInfoList;
  }
  return albumDetailSongsPrivilege;
}

Map<String, dynamic> $AlbumDetailSongsPrivilegeToJson(
    AlbumDetailSongsPrivilege entity) {
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

extension AlbumDetailSongsPrivilegeExtension on AlbumDetailSongsPrivilege {
  AlbumDetailSongsPrivilege copyWith({
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
    AlbumDetailSongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege,
    List<AlbumDetailSongsPrivilegeChargeInfoList>? chargeInfoList,
  }) {
    return AlbumDetailSongsPrivilege()
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

AlbumDetailSongsPrivilegeFreeTrialPrivilege $AlbumDetailSongsPrivilegeFreeTrialPrivilegeFromJson(
    Map<String, dynamic> json) {
  final AlbumDetailSongsPrivilegeFreeTrialPrivilege albumDetailSongsPrivilegeFreeTrialPrivilege = AlbumDetailSongsPrivilegeFreeTrialPrivilege();
  final bool? resConsumable = jsonConvert.convert<bool>(json['resConsumable']);
  if (resConsumable != null) {
    albumDetailSongsPrivilegeFreeTrialPrivilege.resConsumable = resConsumable;
  }
  final bool? userConsumable = jsonConvert.convert<bool>(
      json['userConsumable']);
  if (userConsumable != null) {
    albumDetailSongsPrivilegeFreeTrialPrivilege.userConsumable = userConsumable;
  }
  final dynamic listenType = json['listenType'];
  if (listenType != null) {
    albumDetailSongsPrivilegeFreeTrialPrivilege.listenType = listenType;
  }
  return albumDetailSongsPrivilegeFreeTrialPrivilege;
}

Map<String, dynamic> $AlbumDetailSongsPrivilegeFreeTrialPrivilegeToJson(
    AlbumDetailSongsPrivilegeFreeTrialPrivilege entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['resConsumable'] = entity.resConsumable;
  data['userConsumable'] = entity.userConsumable;
  data['listenType'] = entity.listenType;
  return data;
}

extension AlbumDetailSongsPrivilegeFreeTrialPrivilegeExtension on AlbumDetailSongsPrivilegeFreeTrialPrivilege {
  AlbumDetailSongsPrivilegeFreeTrialPrivilege copyWith({
    bool? resConsumable,
    bool? userConsumable,
    dynamic listenType,
  }) {
    return AlbumDetailSongsPrivilegeFreeTrialPrivilege()
      ..resConsumable = resConsumable ?? this.resConsumable
      ..userConsumable = userConsumable ?? this.userConsumable
      ..listenType = listenType ?? this.listenType;
  }
}

AlbumDetailSongsPrivilegeChargeInfoList $AlbumDetailSongsPrivilegeChargeInfoListFromJson(
    Map<String, dynamic> json) {
  final AlbumDetailSongsPrivilegeChargeInfoList albumDetailSongsPrivilegeChargeInfoList = AlbumDetailSongsPrivilegeChargeInfoList();
  final int? rate = jsonConvert.convert<int>(json['rate']);
  if (rate != null) {
    albumDetailSongsPrivilegeChargeInfoList.rate = rate;
  }
  final dynamic chargeUrl = json['chargeUrl'];
  if (chargeUrl != null) {
    albumDetailSongsPrivilegeChargeInfoList.chargeUrl = chargeUrl;
  }
  final dynamic chargeMessage = json['chargeMessage'];
  if (chargeMessage != null) {
    albumDetailSongsPrivilegeChargeInfoList.chargeMessage = chargeMessage;
  }
  final int? chargeType = jsonConvert.convert<int>(json['chargeType']);
  if (chargeType != null) {
    albumDetailSongsPrivilegeChargeInfoList.chargeType = chargeType;
  }
  return albumDetailSongsPrivilegeChargeInfoList;
}

Map<String, dynamic> $AlbumDetailSongsPrivilegeChargeInfoListToJson(
    AlbumDetailSongsPrivilegeChargeInfoList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['rate'] = entity.rate;
  data['chargeUrl'] = entity.chargeUrl;
  data['chargeMessage'] = entity.chargeMessage;
  data['chargeType'] = entity.chargeType;
  return data;
}

extension AlbumDetailSongsPrivilegeChargeInfoListExtension on AlbumDetailSongsPrivilegeChargeInfoList {
  AlbumDetailSongsPrivilegeChargeInfoList copyWith({
    int? rate,
    dynamic chargeUrl,
    dynamic chargeMessage,
    int? chargeType,
  }) {
    return AlbumDetailSongsPrivilegeChargeInfoList()
      ..rate = rate ?? this.rate
      ..chargeUrl = chargeUrl ?? this.chargeUrl
      ..chargeMessage = chargeMessage ?? this.chargeMessage
      ..chargeType = chargeType ?? this.chargeType;
  }
}

AlbumDetailAlbum $AlbumDetailAlbumFromJson(Map<String, dynamic> json) {
  final AlbumDetailAlbum albumDetailAlbum = AlbumDetailAlbum();
  final List<dynamic>? songs = (json['songs'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (songs != null) {
    albumDetailAlbum.songs = songs;
  }
  final bool? paid = jsonConvert.convert<bool>(json['paid']);
  if (paid != null) {
    albumDetailAlbum.paid = paid;
  }
  final bool? onSale = jsonConvert.convert<bool>(json['onSale']);
  if (onSale != null) {
    albumDetailAlbum.onSale = onSale;
  }
  final int? mark = jsonConvert.convert<int>(json['mark']);
  if (mark != null) {
    albumDetailAlbum.mark = mark;
  }
  final dynamic awardTags = json['awardTags'];
  if (awardTags != null) {
    albumDetailAlbum.awardTags = awardTags;
  }
  final int? companyId = jsonConvert.convert<int>(json['companyId']);
  if (companyId != null) {
    albumDetailAlbum.companyId = companyId;
  }
  final String? blurPicUrl = jsonConvert.convert<String>(json['blurPicUrl']);
  if (blurPicUrl != null) {
    albumDetailAlbum.blurPicUrl = blurPicUrl;
  }
  final int? pic = jsonConvert.convert<int>(json['pic']);
  if (pic != null) {
    albumDetailAlbum.pic = pic;
  }
  final List<AlbumDetailAlbumArtists>? artists = (json['artists'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AlbumDetailAlbumArtists>(
          e) as AlbumDetailAlbumArtists).toList();
  if (artists != null) {
    albumDetailAlbum.artists = artists;
  }
  final List<dynamic>? alias = (json['alias'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (alias != null) {
    albumDetailAlbum.alias = alias;
  }
  final int? copyrightId = jsonConvert.convert<int>(json['copyrightId']);
  if (copyrightId != null) {
    albumDetailAlbum.copyrightId = copyrightId;
  }
  final int? picId = jsonConvert.convert<int>(json['picId']);
  if (picId != null) {
    albumDetailAlbum.picId = picId;
  }
  final AlbumDetailAlbumArtist? artist = jsonConvert.convert<
      AlbumDetailAlbumArtist>(json['artist']);
  if (artist != null) {
    albumDetailAlbum.artist = artist;
  }
  final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
  if (briefDesc != null) {
    albumDetailAlbum.briefDesc = briefDesc;
  }
  final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
  if (publishTime != null) {
    albumDetailAlbum.publishTime = publishTime;
  }
  final String? company = jsonConvert.convert<String>(json['company']);
  if (company != null) {
    albumDetailAlbum.company = company;
  }
  final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
  if (picUrl != null) {
    albumDetailAlbum.picUrl = picUrl;
  }
  final String? commentThreadId = jsonConvert.convert<String>(
      json['commentThreadId']);
  if (commentThreadId != null) {
    albumDetailAlbum.commentThreadId = commentThreadId;
  }
  final String? tags = jsonConvert.convert<String>(json['tags']);
  if (tags != null) {
    albumDetailAlbum.tags = tags;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    albumDetailAlbum.status = status;
  }
  final String? subType = jsonConvert.convert<String>(json['subType']);
  if (subType != null) {
    albumDetailAlbum.subType = subType;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    albumDetailAlbum.description = description;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    albumDetailAlbum.name = name;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    albumDetailAlbum.id = id;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    albumDetailAlbum.type = type;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    albumDetailAlbum.size = size;
  }
  final String? picidStr = jsonConvert.convert<String>(json['picId_str']);
  if (picidStr != null) {
    albumDetailAlbum.picidStr = picidStr;
  }
  final AlbumDetailAlbumInfo? info = jsonConvert.convert<AlbumDetailAlbumInfo>(
      json['info']);
  if (info != null) {
    albumDetailAlbum.info = info;
  }
  return albumDetailAlbum;
}

Map<String, dynamic> $AlbumDetailAlbumToJson(AlbumDetailAlbum entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['songs'] = entity.songs;
  data['paid'] = entity.paid;
  data['onSale'] = entity.onSale;
  data['mark'] = entity.mark;
  data['awardTags'] = entity.awardTags;
  data['companyId'] = entity.companyId;
  data['blurPicUrl'] = entity.blurPicUrl;
  data['pic'] = entity.pic;
  data['artists'] = entity.artists?.map((v) => v.toJson()).toList();
  data['alias'] = entity.alias;
  data['copyrightId'] = entity.copyrightId;
  data['picId'] = entity.picId;
  data['artist'] = entity.artist?.toJson();
  data['briefDesc'] = entity.briefDesc;
  data['publishTime'] = entity.publishTime;
  data['company'] = entity.company;
  data['picUrl'] = entity.picUrl;
  data['commentThreadId'] = entity.commentThreadId;
  data['tags'] = entity.tags;
  data['status'] = entity.status;
  data['subType'] = entity.subType;
  data['description'] = entity.description;
  data['name'] = entity.name;
  data['id'] = entity.id;
  data['type'] = entity.type;
  data['size'] = entity.size;
  data['picId_str'] = entity.picidStr;
  data['info'] = entity.info?.toJson();
  return data;
}

extension AlbumDetailAlbumExtension on AlbumDetailAlbum {
  AlbumDetailAlbum copyWith({
    List<dynamic>? songs,
    bool? paid,
    bool? onSale,
    int? mark,
    dynamic awardTags,
    int? companyId,
    String? blurPicUrl,
    int? pic,
    List<AlbumDetailAlbumArtists>? artists,
    List<dynamic>? alias,
    int? copyrightId,
    int? picId,
    AlbumDetailAlbumArtist? artist,
    String? briefDesc,
    int? publishTime,
    String? company,
    String? picUrl,
    String? commentThreadId,
    String? tags,
    int? status,
    String? subType,
    String? description,
    String? name,
    int? id,
    String? type,
    int? size,
    String? picidStr,
    AlbumDetailAlbumInfo? info,
  }) {
    return AlbumDetailAlbum()
      ..songs = songs ?? this.songs
      ..paid = paid ?? this.paid
      ..onSale = onSale ?? this.onSale
      ..mark = mark ?? this.mark
      ..awardTags = awardTags ?? this.awardTags
      ..companyId = companyId ?? this.companyId
      ..blurPicUrl = blurPicUrl ?? this.blurPicUrl
      ..pic = pic ?? this.pic
      ..artists = artists ?? this.artists
      ..alias = alias ?? this.alias
      ..copyrightId = copyrightId ?? this.copyrightId
      ..picId = picId ?? this.picId
      ..artist = artist ?? this.artist
      ..briefDesc = briefDesc ?? this.briefDesc
      ..publishTime = publishTime ?? this.publishTime
      ..company = company ?? this.company
      ..picUrl = picUrl ?? this.picUrl
      ..commentThreadId = commentThreadId ?? this.commentThreadId
      ..tags = tags ?? this.tags
      ..status = status ?? this.status
      ..subType = subType ?? this.subType
      ..description = description ?? this.description
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..type = type ?? this.type
      ..size = size ?? this.size
      ..picidStr = picidStr ?? this.picidStr
      ..info = info ?? this.info;
  }
}

AlbumDetailAlbumArtists $AlbumDetailAlbumArtistsFromJson(
    Map<String, dynamic> json) {
  final AlbumDetailAlbumArtists albumDetailAlbumArtists = AlbumDetailAlbumArtists();
  final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
  if (img1v1Id != null) {
    albumDetailAlbumArtists.img1v1Id = img1v1Id;
  }
  final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
  if (topicPerson != null) {
    albumDetailAlbumArtists.topicPerson = topicPerson;
  }
  final bool? followed = jsonConvert.convert<bool>(json['followed']);
  if (followed != null) {
    albumDetailAlbumArtists.followed = followed;
  }
  final String? trans = jsonConvert.convert<String>(json['trans']);
  if (trans != null) {
    albumDetailAlbumArtists.trans = trans;
  }
  final List<dynamic>? alias = (json['alias'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (alias != null) {
    albumDetailAlbumArtists.alias = alias;
  }
  final int? picId = jsonConvert.convert<int>(json['picId']);
  if (picId != null) {
    albumDetailAlbumArtists.picId = picId;
  }
  final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
  if (briefDesc != null) {
    albumDetailAlbumArtists.briefDesc = briefDesc;
  }
  final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
  if (musicSize != null) {
    albumDetailAlbumArtists.musicSize = musicSize;
  }
  final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
  if (albumSize != null) {
    albumDetailAlbumArtists.albumSize = albumSize;
  }
  final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
  if (picUrl != null) {
    albumDetailAlbumArtists.picUrl = picUrl;
  }
  final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
  if (img1v1Url != null) {
    albumDetailAlbumArtists.img1v1Url = img1v1Url;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    albumDetailAlbumArtists.name = name;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    albumDetailAlbumArtists.id = id;
  }
  final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
  if (img1v1idStr != null) {
    albumDetailAlbumArtists.img1v1idStr = img1v1idStr;
  }
  return albumDetailAlbumArtists;
}

Map<String, dynamic> $AlbumDetailAlbumArtistsToJson(
    AlbumDetailAlbumArtists entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['img1v1Id'] = entity.img1v1Id;
  data['topicPerson'] = entity.topicPerson;
  data['followed'] = entity.followed;
  data['trans'] = entity.trans;
  data['alias'] = entity.alias;
  data['picId'] = entity.picId;
  data['briefDesc'] = entity.briefDesc;
  data['musicSize'] = entity.musicSize;
  data['albumSize'] = entity.albumSize;
  data['picUrl'] = entity.picUrl;
  data['img1v1Url'] = entity.img1v1Url;
  data['name'] = entity.name;
  data['id'] = entity.id;
  data['img1v1Id_str'] = entity.img1v1idStr;
  return data;
}

extension AlbumDetailAlbumArtistsExtension on AlbumDetailAlbumArtists {
  AlbumDetailAlbumArtists copyWith({
    int? img1v1Id,
    int? topicPerson,
    bool? followed,
    String? trans,
    List<dynamic>? alias,
    int? picId,
    String? briefDesc,
    int? musicSize,
    int? albumSize,
    String? picUrl,
    String? img1v1Url,
    String? name,
    int? id,
    String? img1v1idStr,
  }) {
    return AlbumDetailAlbumArtists()
      ..img1v1Id = img1v1Id ?? this.img1v1Id
      ..topicPerson = topicPerson ?? this.topicPerson
      ..followed = followed ?? this.followed
      ..trans = trans ?? this.trans
      ..alias = alias ?? this.alias
      ..picId = picId ?? this.picId
      ..briefDesc = briefDesc ?? this.briefDesc
      ..musicSize = musicSize ?? this.musicSize
      ..albumSize = albumSize ?? this.albumSize
      ..picUrl = picUrl ?? this.picUrl
      ..img1v1Url = img1v1Url ?? this.img1v1Url
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..img1v1idStr = img1v1idStr ?? this.img1v1idStr;
  }
}

AlbumDetailAlbumArtist $AlbumDetailAlbumArtistFromJson(
    Map<String, dynamic> json) {
  final AlbumDetailAlbumArtist albumDetailAlbumArtist = AlbumDetailAlbumArtist();
  final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
  if (img1v1Id != null) {
    albumDetailAlbumArtist.img1v1Id = img1v1Id;
  }
  final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
  if (topicPerson != null) {
    albumDetailAlbumArtist.topicPerson = topicPerson;
  }
  final bool? followed = jsonConvert.convert<bool>(json['followed']);
  if (followed != null) {
    albumDetailAlbumArtist.followed = followed;
  }
  final String? trans = jsonConvert.convert<String>(json['trans']);
  if (trans != null) {
    albumDetailAlbumArtist.trans = trans;
  }
  final List<String>? alias = (json['alias'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (alias != null) {
    albumDetailAlbumArtist.alias = alias;
  }
  final int? picId = jsonConvert.convert<int>(json['picId']);
  if (picId != null) {
    albumDetailAlbumArtist.picId = picId;
  }
  final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
  if (briefDesc != null) {
    albumDetailAlbumArtist.briefDesc = briefDesc;
  }
  final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
  if (musicSize != null) {
    albumDetailAlbumArtist.musicSize = musicSize;
  }
  final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
  if (albumSize != null) {
    albumDetailAlbumArtist.albumSize = albumSize;
  }
  final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
  if (picUrl != null) {
    albumDetailAlbumArtist.picUrl = picUrl;
  }
  final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
  if (img1v1Url != null) {
    albumDetailAlbumArtist.img1v1Url = img1v1Url;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    albumDetailAlbumArtist.name = name;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    albumDetailAlbumArtist.id = id;
  }
  final String? picidStr = jsonConvert.convert<String>(json['picId_str']);
  if (picidStr != null) {
    albumDetailAlbumArtist.picidStr = picidStr;
  }
  final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
  if (img1v1idStr != null) {
    albumDetailAlbumArtist.img1v1idStr = img1v1idStr;
  }
  return albumDetailAlbumArtist;
}

Map<String, dynamic> $AlbumDetailAlbumArtistToJson(
    AlbumDetailAlbumArtist entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['img1v1Id'] = entity.img1v1Id;
  data['topicPerson'] = entity.topicPerson;
  data['followed'] = entity.followed;
  data['trans'] = entity.trans;
  data['alias'] = entity.alias;
  data['picId'] = entity.picId;
  data['briefDesc'] = entity.briefDesc;
  data['musicSize'] = entity.musicSize;
  data['albumSize'] = entity.albumSize;
  data['picUrl'] = entity.picUrl;
  data['img1v1Url'] = entity.img1v1Url;
  data['name'] = entity.name;
  data['id'] = entity.id;
  data['picId_str'] = entity.picidStr;
  data['img1v1Id_str'] = entity.img1v1idStr;
  return data;
}

extension AlbumDetailAlbumArtistExtension on AlbumDetailAlbumArtist {
  AlbumDetailAlbumArtist copyWith({
    int? img1v1Id,
    int? topicPerson,
    bool? followed,
    String? trans,
    List<String>? alias,
    int? picId,
    String? briefDesc,
    int? musicSize,
    int? albumSize,
    String? picUrl,
    String? img1v1Url,
    String? name,
    int? id,
    String? picidStr,
    String? img1v1idStr,
  }) {
    return AlbumDetailAlbumArtist()
      ..img1v1Id = img1v1Id ?? this.img1v1Id
      ..topicPerson = topicPerson ?? this.topicPerson
      ..followed = followed ?? this.followed
      ..trans = trans ?? this.trans
      ..alias = alias ?? this.alias
      ..picId = picId ?? this.picId
      ..briefDesc = briefDesc ?? this.briefDesc
      ..musicSize = musicSize ?? this.musicSize
      ..albumSize = albumSize ?? this.albumSize
      ..picUrl = picUrl ?? this.picUrl
      ..img1v1Url = img1v1Url ?? this.img1v1Url
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..picidStr = picidStr ?? this.picidStr
      ..img1v1idStr = img1v1idStr ?? this.img1v1idStr;
  }
}

AlbumDetailAlbumInfo $AlbumDetailAlbumInfoFromJson(Map<String, dynamic> json) {
  final AlbumDetailAlbumInfo albumDetailAlbumInfo = AlbumDetailAlbumInfo();
  final AlbumDetailAlbumInfoCommentThread? commentThread = jsonConvert.convert<
      AlbumDetailAlbumInfoCommentThread>(json['commentThread']);
  if (commentThread != null) {
    albumDetailAlbumInfo.commentThread = commentThread;
  }
  final dynamic latestLikedUsers = json['latestLikedUsers'];
  if (latestLikedUsers != null) {
    albumDetailAlbumInfo.latestLikedUsers = latestLikedUsers;
  }
  final bool? liked = jsonConvert.convert<bool>(json['liked']);
  if (liked != null) {
    albumDetailAlbumInfo.liked = liked;
  }
  final dynamic comments = json['comments'];
  if (comments != null) {
    albumDetailAlbumInfo.comments = comments;
  }
  final int? resourceType = jsonConvert.convert<int>(json['resourceType']);
  if (resourceType != null) {
    albumDetailAlbumInfo.resourceType = resourceType;
  }
  final int? resourceId = jsonConvert.convert<int>(json['resourceId']);
  if (resourceId != null) {
    albumDetailAlbumInfo.resourceId = resourceId;
  }
  final int? commentCount = jsonConvert.convert<int>(json['commentCount']);
  if (commentCount != null) {
    albumDetailAlbumInfo.commentCount = commentCount;
  }
  final int? likedCount = jsonConvert.convert<int>(json['likedCount']);
  if (likedCount != null) {
    albumDetailAlbumInfo.likedCount = likedCount;
  }
  final int? shareCount = jsonConvert.convert<int>(json['shareCount']);
  if (shareCount != null) {
    albumDetailAlbumInfo.shareCount = shareCount;
  }
  final String? threadId = jsonConvert.convert<String>(json['threadId']);
  if (threadId != null) {
    albumDetailAlbumInfo.threadId = threadId;
  }
  return albumDetailAlbumInfo;
}

Map<String, dynamic> $AlbumDetailAlbumInfoToJson(AlbumDetailAlbumInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['commentThread'] = entity.commentThread?.toJson();
  data['latestLikedUsers'] = entity.latestLikedUsers;
  data['liked'] = entity.liked;
  data['comments'] = entity.comments;
  data['resourceType'] = entity.resourceType;
  data['resourceId'] = entity.resourceId;
  data['commentCount'] = entity.commentCount;
  data['likedCount'] = entity.likedCount;
  data['shareCount'] = entity.shareCount;
  data['threadId'] = entity.threadId;
  return data;
}

extension AlbumDetailAlbumInfoExtension on AlbumDetailAlbumInfo {
  AlbumDetailAlbumInfo copyWith({
    AlbumDetailAlbumInfoCommentThread? commentThread,
    dynamic latestLikedUsers,
    bool? liked,
    dynamic comments,
    int? resourceType,
    int? resourceId,
    int? commentCount,
    int? likedCount,
    int? shareCount,
    String? threadId,
  }) {
    return AlbumDetailAlbumInfo()
      ..commentThread = commentThread ?? this.commentThread
      ..latestLikedUsers = latestLikedUsers ?? this.latestLikedUsers
      ..liked = liked ?? this.liked
      ..comments = comments ?? this.comments
      ..resourceType = resourceType ?? this.resourceType
      ..resourceId = resourceId ?? this.resourceId
      ..commentCount = commentCount ?? this.commentCount
      ..likedCount = likedCount ?? this.likedCount
      ..shareCount = shareCount ?? this.shareCount
      ..threadId = threadId ?? this.threadId;
  }
}

AlbumDetailAlbumInfoCommentThread $AlbumDetailAlbumInfoCommentThreadFromJson(
    Map<String, dynamic> json) {
  final AlbumDetailAlbumInfoCommentThread albumDetailAlbumInfoCommentThread = AlbumDetailAlbumInfoCommentThread();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    albumDetailAlbumInfoCommentThread.id = id;
  }
  final AlbumDetailAlbumInfoCommentThreadResourceInfo? resourceInfo = jsonConvert
      .convert<AlbumDetailAlbumInfoCommentThreadResourceInfo>(
      json['resourceInfo']);
  if (resourceInfo != null) {
    albumDetailAlbumInfoCommentThread.resourceInfo = resourceInfo;
  }
  final int? resourceType = jsonConvert.convert<int>(json['resourceType']);
  if (resourceType != null) {
    albumDetailAlbumInfoCommentThread.resourceType = resourceType;
  }
  final int? commentCount = jsonConvert.convert<int>(json['commentCount']);
  if (commentCount != null) {
    albumDetailAlbumInfoCommentThread.commentCount = commentCount;
  }
  final int? likedCount = jsonConvert.convert<int>(json['likedCount']);
  if (likedCount != null) {
    albumDetailAlbumInfoCommentThread.likedCount = likedCount;
  }
  final int? shareCount = jsonConvert.convert<int>(json['shareCount']);
  if (shareCount != null) {
    albumDetailAlbumInfoCommentThread.shareCount = shareCount;
  }
  final int? hotCount = jsonConvert.convert<int>(json['hotCount']);
  if (hotCount != null) {
    albumDetailAlbumInfoCommentThread.hotCount = hotCount;
  }
  final dynamic latestLikedUsers = json['latestLikedUsers'];
  if (latestLikedUsers != null) {
    albumDetailAlbumInfoCommentThread.latestLikedUsers = latestLikedUsers;
  }
  final int? resourceOwnerId = jsonConvert.convert<int>(
      json['resourceOwnerId']);
  if (resourceOwnerId != null) {
    albumDetailAlbumInfoCommentThread.resourceOwnerId = resourceOwnerId;
  }
  final String? resourceTitle = jsonConvert.convert<String>(
      json['resourceTitle']);
  if (resourceTitle != null) {
    albumDetailAlbumInfoCommentThread.resourceTitle = resourceTitle;
  }
  final int? resourceId = jsonConvert.convert<int>(json['resourceId']);
  if (resourceId != null) {
    albumDetailAlbumInfoCommentThread.resourceId = resourceId;
  }
  return albumDetailAlbumInfoCommentThread;
}

Map<String, dynamic> $AlbumDetailAlbumInfoCommentThreadToJson(
    AlbumDetailAlbumInfoCommentThread entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['resourceInfo'] = entity.resourceInfo?.toJson();
  data['resourceType'] = entity.resourceType;
  data['commentCount'] = entity.commentCount;
  data['likedCount'] = entity.likedCount;
  data['shareCount'] = entity.shareCount;
  data['hotCount'] = entity.hotCount;
  data['latestLikedUsers'] = entity.latestLikedUsers;
  data['resourceOwnerId'] = entity.resourceOwnerId;
  data['resourceTitle'] = entity.resourceTitle;
  data['resourceId'] = entity.resourceId;
  return data;
}

extension AlbumDetailAlbumInfoCommentThreadExtension on AlbumDetailAlbumInfoCommentThread {
  AlbumDetailAlbumInfoCommentThread copyWith({
    String? id,
    AlbumDetailAlbumInfoCommentThreadResourceInfo? resourceInfo,
    int? resourceType,
    int? commentCount,
    int? likedCount,
    int? shareCount,
    int? hotCount,
    dynamic latestLikedUsers,
    int? resourceOwnerId,
    String? resourceTitle,
    int? resourceId,
  }) {
    return AlbumDetailAlbumInfoCommentThread()
      ..id = id ?? this.id
      ..resourceInfo = resourceInfo ?? this.resourceInfo
      ..resourceType = resourceType ?? this.resourceType
      ..commentCount = commentCount ?? this.commentCount
      ..likedCount = likedCount ?? this.likedCount
      ..shareCount = shareCount ?? this.shareCount
      ..hotCount = hotCount ?? this.hotCount
      ..latestLikedUsers = latestLikedUsers ?? this.latestLikedUsers
      ..resourceOwnerId = resourceOwnerId ?? this.resourceOwnerId
      ..resourceTitle = resourceTitle ?? this.resourceTitle
      ..resourceId = resourceId ?? this.resourceId;
  }
}

AlbumDetailAlbumInfoCommentThreadResourceInfo $AlbumDetailAlbumInfoCommentThreadResourceInfoFromJson(
    Map<String, dynamic> json) {
  final AlbumDetailAlbumInfoCommentThreadResourceInfo albumDetailAlbumInfoCommentThreadResourceInfo = AlbumDetailAlbumInfoCommentThreadResourceInfo();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    albumDetailAlbumInfoCommentThreadResourceInfo.id = id;
  }
  final int? userId = jsonConvert.convert<int>(json['userId']);
  if (userId != null) {
    albumDetailAlbumInfoCommentThreadResourceInfo.userId = userId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    albumDetailAlbumInfoCommentThreadResourceInfo.name = name;
  }
  final String? imgUrl = jsonConvert.convert<String>(json['imgUrl']);
  if (imgUrl != null) {
    albumDetailAlbumInfoCommentThreadResourceInfo.imgUrl = imgUrl;
  }
  final dynamic creator = json['creator'];
  if (creator != null) {
    albumDetailAlbumInfoCommentThreadResourceInfo.creator = creator;
  }
  final dynamic encodedId = json['encodedId'];
  if (encodedId != null) {
    albumDetailAlbumInfoCommentThreadResourceInfo.encodedId = encodedId;
  }
  final dynamic subTitle = json['subTitle'];
  if (subTitle != null) {
    albumDetailAlbumInfoCommentThreadResourceInfo.subTitle = subTitle;
  }
  final dynamic webUrl = json['webUrl'];
  if (webUrl != null) {
    albumDetailAlbumInfoCommentThreadResourceInfo.webUrl = webUrl;
  }
  return albumDetailAlbumInfoCommentThreadResourceInfo;
}

Map<String, dynamic> $AlbumDetailAlbumInfoCommentThreadResourceInfoToJson(
    AlbumDetailAlbumInfoCommentThreadResourceInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['userId'] = entity.userId;
  data['name'] = entity.name;
  data['imgUrl'] = entity.imgUrl;
  data['creator'] = entity.creator;
  data['encodedId'] = entity.encodedId;
  data['subTitle'] = entity.subTitle;
  data['webUrl'] = entity.webUrl;
  return data;
}

extension AlbumDetailAlbumInfoCommentThreadResourceInfoExtension on AlbumDetailAlbumInfoCommentThreadResourceInfo {
  AlbumDetailAlbumInfoCommentThreadResourceInfo copyWith({
    int? id,
    int? userId,
    String? name,
    String? imgUrl,
    dynamic creator,
    dynamic encodedId,
    dynamic subTitle,
    dynamic webUrl,
  }) {
    return AlbumDetailAlbumInfoCommentThreadResourceInfo()
      ..id = id ?? this.id
      ..userId = userId ?? this.userId
      ..name = name ?? this.name
      ..imgUrl = imgUrl ?? this.imgUrl
      ..creator = creator ?? this.creator
      ..encodedId = encodedId ?? this.encodedId
      ..subTitle = subTitle ?? this.subTitle
      ..webUrl = webUrl ?? this.webUrl;
  }
}