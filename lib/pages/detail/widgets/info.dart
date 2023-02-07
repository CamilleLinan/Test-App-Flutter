import 'package:flutter/material.dart';
import 'package:myapp/models/game.dart';
import 'package:myapp/pages/detail/widgets/description.dart';
import 'package:myapp/pages/detail/widgets/gallery.dart';
import 'package:myapp/pages/detail/widgets/header.dart';
import 'package:myapp/pages/detail/widgets/review.dart';

class GameInfo extends StatelessWidget {
  const GameInfo(this.game, {super.key});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: [
        HeaderSection(game),
        GallerySection(game),
        DescriptionSection(game),
        ReviewSection(game)
      ]),
    );
  }
}
