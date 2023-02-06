import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        // top: MediaQuery.of(context).padding.top,
        top: 25,
        left: 25,
        right: 25,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Welcome,',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              "Ready to play ?",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            )
          ],
        ),
        CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 84, 64, 149),
          child: Image.asset('assets/images/avatar2.png', fit: BoxFit.cover),
        )
      ]),
    );
  }
}
