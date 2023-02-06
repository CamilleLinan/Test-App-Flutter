import 'package:flutter/material.dart';
import 'package:myapp/models/game.dart';

class PopularGames extends StatelessWidget {
  PopularGames({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => GestureDetector(
              onTap: (() => print('on tap')),
              child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Hero(
                        tag: games[index].name,
                        child: Image.asset(games[index].bgImage),
                      ),
                    ),
                  )),
            )),
        separatorBuilder: ((context, index) => const SizedBox(width: 10)),
        itemCount: games.length,
      ),
    );
  }
}
