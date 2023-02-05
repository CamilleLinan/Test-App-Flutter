import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final categories = [
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFF605CF4),
      'title': 'Arcade',
    },
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFFFC77A6),
      'title': 'Racing',
    },
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFF4391FF),
      'title': 'Strategy',
    },
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFF7182F2),
      'title': 'More',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 239, 239, 239),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 140,
              color: Colors.amber,
            )
          ],
        ));
  }
}
