import 'package:eccommerce/pages/home_screen.dart';
import 'package:flutter/material.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  final List<Widget> majorScreens = [
    const HomeScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: const Color.fromARGB(255, 76, 160, 175),
    ),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        enableFeedback: false,
        showUnselectedLabels: true,
        selectedItemColor: Theme.of(context).primaryColor,
        selectedLabelStyle: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sticky_note_2),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: "Profile",
          ),
        ],
      ),
      body: majorScreens[currentPage],
    );
  }
}
