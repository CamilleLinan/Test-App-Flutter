import 'package:flutter/material.dart';
import 'package:myapp/pages/home/widgets/category.dart';
import 'package:myapp/pages/home/widgets/header.dart';
import 'package:myapp/pages/home/widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5F67EA),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),
              child: Image.asset(
                'assets/images/bg_liquid.png',
                width: 200,
              ),
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(180, 100),
                child: Image.asset(
                  'assets/images/bg_liquid.png',
                  width: 200,
                ),
              ),
            ),
            Column(
              children: [
                const HeaderSection(),
                const SearchSection(),
                CategorySection(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
