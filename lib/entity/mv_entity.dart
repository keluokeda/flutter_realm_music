import 'package:flutter_realm_music/entity/i_mv.dart';
import 'package:flutter_realm_music/object/object.dart';

class MvEntity extends IMv {
  @override
  final int mvId;
  @override
  final String mvName;
  @override
  final String mvImage;
  @override
  final String mvArtistName;
  @override
  final String mvDuration;
  @override
  final int mvPlayCount;

  MvEntity(this.mvId, this.mvName, this.mvImage, this.mvArtistName,
      this.mvDuration, this.mvPlayCount);

  factory MvEntity.fromObject(MvObject object) {
    return MvEntity(object.id, object.name, object.image, object.artistName,
        object.duration, object.playCount);
  }
}
