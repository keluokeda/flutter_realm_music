import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_realm_music/pages/component/mv_view.dart';
import 'package:flutter_realm_music/pages/component/song_view.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

import 'artist_detail_view_model.dart';

class ArtistDetailPage extends StatelessWidget {
  const ArtistDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final artistId = ModalRoute.of(context)?.settings.arguments as int;

    return ChangeNotifierProvider(
        create: (_) => ArtistDetailViewModel(artistId),
        child: Consumer<ArtistDetailViewModel>(
          builder: (context, viewModel, child) {
            return DefaultTabController(
                length: 4,
                child: Scaffold(
                  body: NestedScrollView(
                      headerSliverBuilder: (context, innerBoxIsScrolled) => [
                            SliverAppBar(
                              expandedHeight: 200,
                              title: Text(!innerBoxIsScrolled
                                  ? ""
                                  : viewModel.artist?.artistName ?? '歌手'),
                              pinned: true,
                              actions: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.star))
                              ],
                              flexibleSpace: FlexibleSpaceBar(
                                background: CachedNetworkImage(
                                  imageUrl:
                                      viewModel.artist?.artistAvatar ?? '',
                                  errorWidget: (context, _, __) =>
                                      const Icon(Icons.error),
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 200,
                                ),
                              ),
                              bottom: const TabBar(tabs: [
                                Tab(
                                  text: '歌曲',
                                ),
                                Tab(
                                  text: '介绍',
                                ),
                                Tab(
                                  text: '专辑',
                                ),
                                Tab(
                                  text: 'mv',
                                ),
                              ]),
                            ),
                          ],
                      body: TabBarView(children: [
                        ListView(
                          padding: EdgeInsets.zero,
                          children: [
                            ...viewModel.hotSongs
                                .map((e) => SongView(e))
                                .toList()
                          ],
                        ),
                        ListView(
                          padding: EdgeInsets.zero,
                          children: [
                            ...viewModel.descList
                                .map((e) => ListTile(
                                      title: Text(e.title),
                                      subtitle: Text(e.text),
                                    ))
                                .toList()
                          ],
                        ),
                        GridView.count(
                          crossAxisCount: 3,
                          padding: const EdgeInsets.all(8),
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          children: viewModel.albums
                              .map((e) => InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(
                                          '/album/detail',
                                          arguments: e.albumId);
                                    },
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CachedNetworkImage(
                                            imageUrl: e.albumImage),
                                        Container(
                                          width: double.infinity,
                                          padding: const EdgeInsets.all(4),
                                          color: Colors.black.withOpacity(0.5),
                                          child: Text(
                                            e.albumName,
                                            maxLines: 1,
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                                  ))
                              .toList(),
                        ),
                        MasonryGridView.count(
                            padding: const EdgeInsets.all(8),
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            itemCount: viewModel.mvs.length,
                            itemBuilder: (context, index) =>
                                MvView(viewModel.mvs[index])),
                        // CachedNetworkImage(
                        //   imageUrl: viewModel.mvs[index].mvImage,
                        //   fit: BoxFit.cover,
                        // )),
                      ])),
                ));
          },
        ));
  }

  Widget _buildListView(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        ...List.generate(
            1000,
            (index) => ListTile(
                  title: Text(index.toString()),
                ))
      ],
    );
  }
}

// class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//   final TabBar tabBar;
//
//   _SliverAppBarDelegate(this.tabBar);
//
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Container(
//       child: tabBar,
//     );
//   }
//
//   @override
//   double get maxExtent => tabBar.preferredSize.height;
//
//   @override
//   double get minExtent => tabBar.preferredSize.height;
//
//   @override
//   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
//     return false;
//   }
// }
