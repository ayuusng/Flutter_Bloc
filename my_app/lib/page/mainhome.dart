import 'package:flutter/material.dart';

void main() {
  runApp(const MyRumah());
}

class MyRumah extends StatelessWidget {
  const MyRumah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    LibraryScreen(),
    ProfileScreen(),
  ];

  final List<String> _appBarTitles = const [
    'Home',
    'Library',
    'Profile',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
        backgroundColor: Colors.blue,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(top: 100),
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/Ft.jpeg'),
                    radius: 30,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ayu Kristin N S',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'sngayuu126@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Write'),
              onTap: () {
                // Menu Write, belum mengimport apapun
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EmptyScreen(title: 'Write')),
                );
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                // Menu About, belum mengimport apapun
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EmptyScreen(title: 'About')),
                );
              },
            ),
            ListTile(
              title: const Text('Setting'),
              onTap: () {
                // Menu Setting, belum mengimport apapun
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EmptyScreen(title: 'Setting')),
                );
              },
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books, color: Colors.black),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

// Screen kosong untuk Write, About, Setting
class EmptyScreen extends StatelessWidget {
  final String title;
  const EmptyScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('$title Screen', style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}

// Screen Home
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Screen', style: TextStyle(fontSize: 24)),
    );
  }
}

// Screen Library
class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Library Screen', style: TextStyle(fontSize: 24)),
    );
  }
}

// Screen Profile
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Screen', style: TextStyle(fontSize: 24)),
    );
  }
}
