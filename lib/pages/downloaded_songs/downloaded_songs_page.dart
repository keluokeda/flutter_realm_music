import 'package:flutter/material.dart';
import 'package:flutter_realm_music/pages/component/song_view.dart';
import 'package:flutter_realm_music/pages/downloaded_songs/downloaded_songs_view_model.dart';
import 'package:provider/provider.dart';

class DownloadedSongsPage extends StatelessWidget {
  const DownloadedSongsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DownloadedSongsViewModel(),
      child: Consumer<DownloadedSongsViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('已下载的歌曲'),
            ),
            body: ListView(
              children: viewModel.songs
                  .map((e) => SongView(
                        e,
                        actions: [
                          ListTile(
                            leading: const Icon(Icons.delete),
                            title: const Text('删除'),
                            onTap: () async {
                              Navigator.of(context).pop();
                              await viewModel.delete(e);
                            },
                          )
                        ],
                      ))
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
