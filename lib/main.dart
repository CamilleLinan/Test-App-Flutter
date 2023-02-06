import 'package:flutter/material.dart';
import 'package:myapp/pages/app/app.dart';
import 'package:myapp/pages/book/book.dart';
import 'package:myapp/pages/film/film.dart';
import 'package:myapp/pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Game Store';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          IndexedStack(
            index: _selectedIndex,
            children: const <Widget>[
              HomePage(),
              AppPage(),
              FilmPage(),
              BookPage(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label: 'Home',
                    icon: Icon(Icons.home_rounded),
                  ),
                  BottomNavigationBarItem(
                    label: 'App',
                    icon: Icon(Icons.more_horiz),
                  ),
                  BottomNavigationBarItem(
                    label: 'Film',
                    icon: Icon(Icons.play_arrow_rounded),
                  ),
                  BottomNavigationBarItem(
                    label: 'Book',
                    icon: Icon(Icons.menu_book_rounded),
                  ),
                ],
                currentIndex: _selectedIndex,
                fixedColor: const Color(0xFF5F67EA),
                unselectedItemColor: Colors.grey,
                iconSize: 28,
                unselectedFontSize: 15,
                showUnselectedLabels: true,
                onTap: _onItemTapped,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
