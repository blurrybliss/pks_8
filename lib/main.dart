import 'package:flutter/material.dart';
import 'package:practice_4/pages/home_page.dart';
import 'package:practice_4/pages/favorites_page.dart';
import 'package:practice_4/pages/profile_page.dart';
import 'package:practice_4/model/flowers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Flowers> _favorites = [];

  final List<Widget> _pages = [];

  @override
  void initState() {
    _pages.addAll([
      HomePage(
        onAddToFavorites: (flower) {
          setState(() {
            if (!_favorites.contains(flower)) {
              _favorites.add(flower);
            }
          });
        },
      ),
      FavoritesPage(favorites: _favorites),
      const ProfilePage(),
    ]);
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}
