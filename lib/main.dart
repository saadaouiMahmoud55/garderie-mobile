import 'dart:async';
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
      title: 'Ma Garderie',
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/garderie.jpg',
              height: 250,
            ),

            const SizedBox(height: 20),

            const Text(
              'Ma Garderie',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ma Garderie"),
      ),

      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              child: Text("Menu"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Accueil"),
            ),
            ListTile(
              leading: Icon(Icons.child_care),
              title: Text("Activités"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("À propos"),
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text(
          "Liste des activités",
          style: TextStyle(fontSize: 22),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}