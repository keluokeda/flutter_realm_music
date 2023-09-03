import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_realm_music/pages/album_detail/album_detail_view_model.dart';
import 'package:flutter_realm_music/pages/component/song_view.dart';
import 'package:provider/provider.dart';

class AlbumDetailPage extends StatelessWidget {
  const AlbumDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final albumId = ModalRoute.of(context)?.settings.arguments as int;
    return ChangeNotifierProvider(
      create: (_) => AlbumDetailViewModel(albumId),
      child: Consumer<AlbumDetailViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text(viewModel.album?.albumName ?? '专辑'),
              actions: [
                if (viewModel.album != null)
                  IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
                if (viewModel.isFollowed != null)
                  IconButton(
                      onPressed: () {
                        viewModel.toggleFollow();
                      },
                      icon: Icon(
                          viewModel.isFollowed!
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: viewModel.isFollowed! ? Colors.red : null)),
              ],
            ),
            body: ListView(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Card(
                    margin: const EdgeInsets.all(32),
                    child: CachedNetworkImage(
                      imageUrl: viewModel.album?.image ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                if (viewModel.songs.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                            child: OutlinedButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.play_arrow),
                                label: const Text("播放"))),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                            child: OutlinedButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.download),
                                label: const Text("下载"))),
                      ],
                    ),
                  ),
                const SizedBox(
                  height: 32,
                ),
                ...viewModel.songs.map((e) => SongView(e)).toList()
              ],
            ),
          );
        },
      ),
    );
  }
}
