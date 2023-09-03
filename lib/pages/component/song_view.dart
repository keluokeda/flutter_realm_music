import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_realm_music/entity/download_status.dart';
import 'package:flutter_realm_music/entity/i_song_entity.dart';
import 'package:flutter_realm_music/pages/audio_player_view_model.dart';
import 'package:flutter_realm_music/pages/download_view_model.dart';
import 'package:provider/provider.dart';

class SongView extends StatelessWidget {
  final ISongEntity entity;
  final List<ListTile> actions;

  const SongView(this.entity, {super.key, this.actions = const []});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        entity.songName,
        maxLines: 1,
      ),
      subtitle: Text(
        entity.subtitle(),
        maxLines: 1,
      ),
      leading: CachedNetworkImage(
        imageUrl: entity.album.albumImage,
        width: 40,
        height: 40,
        fit: BoxFit.cover,
      ),
      onTap: () async {
        final path = entity.path;
        if (path == null) {
          return;
        }
        final viewModel =
            Provider.of<AudioPlayerViewModel>(context, listen: false);
        viewModel.play(path);
      },
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: entity.downloadStatus == DownloadStatus.idle
                  ? () {
                      //下载歌曲
                      final downloadViewModel = Provider.of<DownloadViewModel>(
                          context,
                          listen: false);

                      downloadViewModel.downloadSong(entity.songId);
                    }
                  : null,
              icon: Icon(_buildDownloadIconData(entity.downloadStatus))),
          if (entity.songMv != 0)
            IconButton(onPressed: () {}, icon: const Icon(Icons.play_circle)),
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        children: [
                          ListTile(
                              title: Text(
                                entity.songName,
                                maxLines: 1,
                              ),
                              subtitle: Text(
                                entity.subtitle(),
                                maxLines: 1,
                              ),
                              leading: CachedNetworkImage(
                                imageUrl: entity.album.albumImage,
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              )),
                          ListTile(
                            title: const Text('评论'),
                            onTap: () {},
                            leading: const Icon(Icons.comment),
                          ),
                          ListTile(
                            title: const Text('分享'),
                            onTap: () {},
                            leading: const Icon(Icons.share),
                          ),
                          ...entity.artists.map((artist) => ListTile(
                                title: Text("歌手：${artist.artistName}"),
                                leading: const Icon(Icons.account_circle),
                                onTap: () {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).pushNamed(
                                      '/artist/detail',
                                      arguments: artist.artistId);
                                },
                              )),
                          ListTile(
                            title: Text("专辑：${entity.album.albumName}"),
                            leading: const Icon(Icons.album),
                            onTap: () {
                              Navigator.of(context).pop();
                              Navigator.of(context).pushNamed('/album/detail',
                                  arguments: entity.album.albumId);
                            },
                          ),
                          ...actions
                        ],
                      );
                    });
              },
              icon: const Icon(Icons.more_vert)),
        ],
      ),
    );
  }

  IconData _buildDownloadIconData(DownloadStatus status) {
    switch (status) {
      case DownloadStatus.idle:
        return Icons.download;
      case DownloadStatus.downloading:
        return Icons.downloading;
      case DownloadStatus.downloaded:
        return Icons.download_done;
      case DownloadStatus.error:
        return Icons.error_outline;
    }
  }
}
