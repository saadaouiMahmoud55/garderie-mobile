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
final List<Map<String, String>> activites = [
  {
    "titre": "Dessin et coloriage",
    "description": "Développement de la créativité",
    "icone": "🎨"
  },
  {
    "titre": "Jeux éducatifs",
    "description": "Apprentissage par le jeu",
    "icone": "🧩"
  },
  {
    "titre": "Musique et chansons",
    "description": "Éveil musical des enfants",
    "icone": "🎵"
  },
  {
    "titre": "Lecture de contes",
    "description": "Découverte des histoires",
    "icone": "📚"
  },
  {
    "titre": "Activités sportives",
    "description": "Développement de la motricité",
    "icone": "⚽"
  }
];
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

    body: ListView.builder(
  itemCount: activites.length,
  itemBuilder: (context, index) {
    final activite = activites[index];

    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: Text(
          activite["icone"]!,
          style: const TextStyle(fontSize: 28),
        ),
        title: Text(activite["titre"]!),
        subtitle: Text(activite["description"]!),
      ),
    );
  },
),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}