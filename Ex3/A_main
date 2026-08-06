import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ResponsiveUI(),
    );
  }
}

class ResponsiveUI extends StatelessWidget {
  const ResponsiveUI({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text("Responsive UI"), centerTitle: true),

      body: screenWidth < 600 ? buildMobileLayout() : buildTabletLayout(),
    );
  }

  Widget buildMobileLayout() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        buildCard(Icons.home, "Home"),
        buildCard(Icons.person, "Profile"),
        buildCard(Icons.settings, "Settings"),
      ],
    );
  }

  Widget buildTabletLayout() {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisCount: 3,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: [
        buildCard(Icons.home, "Home"),
        buildCard(Icons.person, "Profile"),
        buildCard(Icons.settings, "Settings"),
        buildCard(Icons.favorite, "Favorites"),
        buildCard(Icons.notifications, "Notifications"),
        buildCard(Icons.shopping_cart, "Cart"),
      ],
    );
  }

  Widget buildCard(IconData icon, String title) {
    return Card(
      elevation: 5,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
