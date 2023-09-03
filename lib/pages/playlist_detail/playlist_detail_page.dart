import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_realm_music/entity/user_playlist_relationship.dart';
import 'package:flutter_realm_music/pages/component/song_view.dart';
import 'package:flutter_realm_music/pages/playlist_detail/playlist_detail_view_model.dart';
import 'package:provider/provider.dart';

class PlaylistDetailPage extends StatelessWidget {
  const PlaylistDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments as int;
    return ChangeNotifierProvider(
      create: (_) => PlaylistDetailViewModel(id),
      child: const _PlaylistDetailBody(),
    );
  }
}

class _PlaylistDetailBody extends StatefulWidget {
  const _PlaylistDetailBody();

  @override
  State<_PlaylistDetailBody> createState() => _PlaylistDetailBodyState();
}

class _PlaylistDetailBodyState extends State<_PlaylistDetailBody> {
  ///创建关系按钮
  Widget _buildRelationshipAction(
      BuildContext context, PlaylistDetailViewModel viewModel) {
    if (viewModel.relationship == UserPlaylistRelationship.none) {
      return IconButton(onPressed: () {}, icon: const Icon(Icons.star_border));
    } else if (viewModel.relationship == UserPlaylistRelationship.followed) {
      return IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.star,
            color: Theme.of(context).primaryColor,
          ));
    } else {
      return IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      title: const Text('提示'),
                      content: const Text('确定删除该歌单吗？'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                            child: const Text('取消')),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: const Text('删除')),
                      ],
                    ));
          },
          icon: const Icon(Icons.delete));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistDetailViewModel>(
        builder: (context, viewModel, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text(viewModel.playlist?.playlistName ?? '歌单详情'),
          actions: [
            if (viewModel.playlist != null)
              IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
            _buildRelationshipAction(context, viewModel)
          ],
        ),
        body: viewModel.loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Card(
                      margin: const EdgeInsets.all(32),
                      child: CachedNetworkImage(
                        imageUrl: viewModel.playlist?.playlistImage ?? '',
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
                  ...viewModel.songs.map((e) => SongView(e))
                ],
              ),
      );
    });
  }
}
