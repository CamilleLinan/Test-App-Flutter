import 'package:flutter/material.dart';
import 'package:myapp/models/game.dart';

class DetailGames extends StatelessWidget {
  const DetailGames(this.game, {super.key});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(game.name),
      ),
    );
  }
}
