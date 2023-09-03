import 'package:background_downloader/background_downloader.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_realm_music/api/http_service.dart';
import 'package:flutter_realm_music/entity/download_status.dart';
import 'package:flutter_realm_music/main.dart';
import 'package:flutter_realm_music/object/object.dart';

class DownloadViewModel extends ChangeNotifier {
  final FileDownloader _fileDownloader = FileDownloader();

  ///下载歌曲
  void downloadSong(int songId) async {
    final songObject = realm.find<SongObject>(songId);
    if (songObject == null) {
      if (kDebugMode) {
        print('没找到id是 $songId 的歌曲');
      }
      return;
    }

    if ((songObject.downloadInfo?.getDownloadStatus() ?? DownloadStatus.idle) !=
        DownloadStatus.idle) {
      if (kDebugMode) {
        print("当前的下载状态是 ${songObject.downloadInfo?.status}");
      }
      return;
    }
    realm.write(() {
      songObject.downloadInfo ??= DownloadInfo(0);
      songObject.downloadInfo?.setDownloadStatus(DownloadStatus.downloading);
    });
    final songUrlResponse =
        (await HttpService.instance.getSongUrl(songId))?.data?.firstOrNull;
    if (songUrlResponse == null) {
      //没有获取到下载地址
      realm.write(() {
        songObject.downloadInfo ??= DownloadInfo(0);
        songObject.downloadInfo?.setDownloadStatus(DownloadStatus.idle);
      });
      return;
    }
    final downloadTask = DownloadTask(
        taskId: songId.toString(),
        //需要加上文件名后缀
        filename: "$songId.${songUrlResponse.type ?? ''}",
        directory: "music",
        url: songUrlResponse.url ?? '',
        updates: Updates.none);
    final result = await _fileDownloader.download(downloadTask);

    if (result.status == TaskStatus.complete) {
      //下载完成
      final filePath = await downloadTask.filePath();
      realm.write(() {
        songObject.downloadInfo?.setDownloadStatus(DownloadStatus.downloaded);
        songObject.downloadInfo?.path = filePath;
      });
    } else {
      //下载失败
      realm.write(() {
        songObject.downloadInfo?.setDownloadStatus(DownloadStatus.error);
      });
    }
  }
}
