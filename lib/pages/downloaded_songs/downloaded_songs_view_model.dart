import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_realm_music/entity/download_status.dart';
import 'package:flutter_realm_music/entity/song_entity.dart';
import 'package:flutter_realm_music/main.dart';
import 'package:flutter_realm_music/object/object.dart';
import 'package:realm/src/results.dart';

import '../../entity/i_song_entity.dart';

class DownloadedSongsViewModel extends ChangeNotifier {
  List<ISongEntity> _songs = [];

  late StreamSubscription<RealmResultsChanges<SongObject>> _subscription;

  List<ISongEntity> get songs => _songs;

  DownloadedSongsViewModel() {
    final results = realm.query<SongObject>(
        'downloadInfo != null And downloadInfo.path != null');
    _updateSongs(results);
    _subscription = results.changes.listen((event) {
      _updateSongs(results);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _subscription.cancel();
  }

  void _updateSongs(RealmResults<SongObject> results) {
    _songs = results.map((e) => SongEntity.fromObject(e)).toList();
    notifyListeners();
  }

  ///删除已下载的歌曲
  delete(ISongEntity entity) async {
    final path = entity.path;
    if (path == null) {
      return;
    }

    final songObject = realm.find<SongObject>(entity.songId);

    if (songObject == null) {
      return;
    }
    realm.write(() {
      songObject.downloadInfo?.setDownloadStatus(DownloadStatus.idle);
      songObject.downloadInfo?.path = null;
    });

    await File(path).delete();
  }
}
