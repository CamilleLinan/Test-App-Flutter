import 'package:flutter/material.dart';
import 'package:myapp/models/game.dart';

class NewestGames extends StatelessWidget {
  NewestGames({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      child: Column(
          children: games
              .map((game) => Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          game.icon,
                          width: 60,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            game.name,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    game.type,
                                    style: TextStyle(
                                      color: Colors.grey.withOpacity(0.8),
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  right: 9,
                                  bottom: 5,
                                  left: 9,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF5F67EA),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Text(
                                  'Install',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          )
                        ],
                      ))
                    ]),
                  ))
              .toList()),
    );
  }
}
