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
      home: const ResponsiveHome(),
    );
  }
}

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    Widget body;

    if (width < 600) {
      body = mobileLayout();
    } else if (width < 1024) {
      body = tabletLayout();
    } else {
      body = desktopLayout();
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Responsive UI"), centerTitle: true),
      body: body,
    );
  }

  Widget mobileLayout() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: List.generate(
        6,
        (index) => Card(
          child: ListTile(
            leading: const Icon(Icons.phone_android),
            title: Text("Mobile Item ${index + 1}"),
          ),
        ),
      ),
    );
  }

  Widget tabletLayout() {
    return GridView.count(
      padding: const EdgeInsets.all(16),
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: List.generate(
        6,
        (index) => Card(
          elevation: 4,
          child: Center(
            child: Text(
              "Tablet Item ${index + 1}",
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }

  Widget desktopLayout() {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisCount: 4,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: List.generate(
        8,
        (index) => Card(
          elevation: 5,
          child: Center(
            child: Text(
              "Desktop Item ${index + 1}",
              style: const TextStyle(fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}
