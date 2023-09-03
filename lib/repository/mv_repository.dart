import '../entity/i_mv.dart';
import '../main.dart';
import '../object/object.dart';

class MvRepository {
  static final MvRepository instance = MvRepository._privateConstructor();

  MvRepository._privateConstructor();

  ///保存mv列表
  void saveMvList(List<IMv> mvList) {
    realm.write(() {
      for (var element in mvList) {
        realm.add(convert(element), update: true);
      }
    });
  }

  static MvObject convert(IMv mv) {
    var target = realm.find<MvObject>(mv.mvId);
    if (target == null) {
      return MvObject(mv.mvId, mv.mvName, mv.mvImage, mv.mvPlayCount,
          mv.mvDuration, mv.mvArtistName);
    } else {
      target.name = mv.mvName;
      target.image = mv.mvImage;
      target.duration = mv.mvDuration;
      target.playCount = mv.mvPlayCount;
      target.artistName = mv.mvArtistName;
      return target;
    }
  }
}
