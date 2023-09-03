import 'package:flutter_realm_music/generated/json/base/json_convert_content.dart';
import 'package:flutter_realm_music/api/response/artist_desc_entity.dart';

ArtistDescEntity $ArtistDescEntityFromJson(Map<String, dynamic> json) {
  final ArtistDescEntity artistDescEntity = ArtistDescEntity();
  final List<
      ArtistDescIntroduction>? introduction = (json['introduction'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<ArtistDescIntroduction>(e) as ArtistDescIntroduction)
      .toList();
  if (introduction != null) {
    artistDescEntity.introduction = introduction;
  }
  final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
  if (briefDesc != null) {
    artistDescEntity.briefDesc = briefDesc;
  }
  final int? count = jsonConvert.convert<int>(json['count']);
  if (count != null) {
    artistDescEntity.count = count;
  }
  final dynamic topicData = json['topicData'];
  if (topicData != null) {
    artistDescEntity.topicData = topicData;
  }
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    artistDescEntity.code = code;
  }
  return artistDescEntity;
}

Map<String, dynamic> $ArtistDescEntityToJson(ArtistDescEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['introduction'] = entity.introduction?.map((v) => v.toJson()).toList();
  data['briefDesc'] = entity.briefDesc;
  data['count'] = entity.count;
  data['topicData'] = entity.topicData;
  data['code'] = entity.code;
  return data;
}

extension ArtistDescEntityExtension on ArtistDescEntity {
  ArtistDescEntity copyWith({
    List<ArtistDescIntroduction>? introduction,
    String? briefDesc,
    int? count,
    dynamic topicData,
    int? code,
  }) {
    return ArtistDescEntity()
      ..introduction = introduction ?? this.introduction
      ..briefDesc = briefDesc ?? this.briefDesc
      ..count = count ?? this.count
      ..topicData = topicData ?? this.topicData
      ..code = code ?? this.code;
  }
}

ArtistDescIntroduction $ArtistDescIntroductionFromJson(
    Map<String, dynamic> json) {
  final ArtistDescIntroduction artistDescIntroduction = ArtistDescIntroduction();
  final String? ti = jsonConvert.convert<String>(json['ti']);
  if (ti != null) {
    artistDescIntroduction.ti = ti;
  }
  final String? txt = jsonConvert.convert<String>(json['txt']);
  if (txt != null) {
    artistDescIntroduction.txt = txt;
  }
  return artistDescIntroduction;
}

Map<String, dynamic> $ArtistDescIntroductionToJson(
    ArtistDescIntroduction entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['ti'] = entity.ti;
  data['txt'] = entity.txt;
  return data;
}

extension ArtistDescIntroductionExtension on ArtistDescIntroduction {
  ArtistDescIntroduction copyWith({
    String? ti,
    String? txt,
  }) {
    return ArtistDescIntroduction()
      ..ti = ti ?? this.ti
      ..txt = txt ?? this.txt;
  }
}