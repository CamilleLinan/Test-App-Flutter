import 'package:flutter/material.dart';
import 'package:myapp/models/game.dart';
import 'package:myapp/pages/detail/widgets/detail_sliver.dart';

class DetailGames extends StatelessWidget {
  const DetailGames(this.game, {super.key});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              game: game,
              expandedHeight: 360,
              roundedContainerHeight: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 150,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
