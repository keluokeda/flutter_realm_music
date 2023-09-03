import 'dart:async';
import 'dart:core';

import 'package:flutter/foundation.dart';
import 'package:flutter_realm_music/api/http_service.dart';
import 'package:flutter_realm_music/entity/i_song_entity.dart';
import 'package:flutter_realm_music/entity/song_entity.dart';
import 'package:flutter_realm_music/object/object.dart';
import 'package:flutter_realm_music/repository/song_repository.dart';
import 'package:realm/src/results.dart';

import '../../main.dart';

class RecommendSongsViewModel extends ChangeNotifier {
  List<ISongEntity> _songs = [];

  List<ISongEntity> get songs => _songs;

  late StreamSubscription<RealmResultsChanges<RecommendSongsObject>>
      _streamSubscription;

  RecommendSongsViewModel() {
    final object = realm.all<RecommendSongsObject>();
    _refreshList(object.firstOrNull);
    _streamSubscription = object.changes.listen((_) {
      _refreshList(object.firstOrNull);
    });

    HttpService.instance.getRecommendSongs().then((value) {
      if (value == null) {
        return;
      }
      SongRepository.instance.saveRecommendSongs(value.data!.dailySongs!);
    });
  }

  void _refreshList(RecommendSongsObject? recommendSongsObject) {
    if (recommendSongsObject == null) {
      return;
    }
    _songs = recommendSongsObject.songs
        .map((e) => SongEntity.fromObject(e))
        .toList();
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    _streamSubscription.cancel();
  }
}
