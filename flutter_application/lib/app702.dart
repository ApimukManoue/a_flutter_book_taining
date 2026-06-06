import 'package:flutter/material.dart';

class App702 extends StatelessWidget {
  const App702({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(            /* แยก มาเขียนหน้าจอแยกต่างหาก */
    backgroundColor: Colors.transparent,
    appBar: AppBar(
      title: const Text('App702'),
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    ),
    body: Placeholder(),
    bottomNavigationBar: BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    ),
  );
}
