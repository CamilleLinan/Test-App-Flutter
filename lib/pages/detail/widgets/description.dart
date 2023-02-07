import 'package:flutter/material.dart';
import 'package:myapp/models/game.dart';
import 'package:readmore/readmore.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection(this.game, {super.key});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: const Text(
            'Resume :',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: ReadMoreText(
            game.description,
            trimLines: 4,
            colorClickableText: const Color.fromARGB(255, 84, 64, 149),
            trimMode: TrimMode.Line,
            trimCollapsedText: 'More',
            trimExpandedText: ' Reduce',
            style: const TextStyle(
              color: Colors.grey,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
