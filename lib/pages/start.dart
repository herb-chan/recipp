import 'package:flutter/material.dart';
import 'package:recipp/pages/home.dart';
import 'package:recipp/pages/favorites.dart';
import 'package:recipp/pages/profile.dart';
import 'package:recipp/pages/recipes.dart';
import 'package:recipp/pages/settings.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _selected_index = 2;

  final List<Widget> _pages = [
    RecipesPage(),
    FavoritesPage(),
    HomePage(),
    ProfilePage(),
    SettingsPage()
  ];

  void _navigate_bottom_bar(int index) {
    setState(() {
      _selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selected_index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.grey[900],
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selected_index,
          onTap: _navigate_bottom_bar,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.grey[500],
          unselectedItemColor: Colors.grey[700],
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "Recipes"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favourites"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}
