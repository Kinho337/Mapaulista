import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lugares para Visitar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlacesToVisitScreen(),
    );
  }
}

class PlacesToVisitScreen extends StatelessWidget {
  final List<Map<String, String>> places = [
    {'name': 'Santos', 'rating': '4/5', 'region': 'Sul'},
    {'name': 'Caraguatatuba', 'rating': '3.5/5', 'region': 'Norte'},
    {'name': 'São Sebastião', 'rating': '4/5', 'region': 'Norte'},
    {'name': 'Ilhabela', 'rating': '4.5/5', 'region': 'Norte'},
    {'name': 'Bertioga', 'rating': '3.5/5', 'region': 'Sul'},
    {'name': 'São Vicente', 'rating': '4/5', 'region': 'Sul'},
    {'name': 'Praia Grande', 'rating': '3.5/5', 'region': 'Sul'},
    {'name': 'Mongaguá', 'rating': '3/5', 'region': 'Sul'},
    {'name': 'Peruíbe', 'rating': '3.5/5', 'region': 'Sul'},
    {'name': 'Iguape', 'rating': '3/5', 'region': 'Sul'},
    {'name': 'Ilha Comprida', 'rating': '3/5', 'region': 'Sul'},
    {'name': 'Cananéia', 'rating': '4/5', 'region': 'Sul'},
    {'name': 'Guarujá', 'rating': '4/5', 'region': 'Sul'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),

      
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Avaliação',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Nome',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Litoral',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: places.length,
              itemBuilder: (context, index) {
                final place = places[index];
                return ListTile(
                  title: Text(place['name']!),
                  subtitle: Text(place['rating']!),
                  trailing: Chip(
                    label: Text(place['region']!),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlaceDetailScreen(place: place),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tela de início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Lugares',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Check list',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'Destinos',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 1, // índice da aba selecionada (1 = 'Lugares')
        onTap: (index) {
          // ação ao tocar nas abas
        },
      ),
    );
  }
}

class PlaceDetailScreen extends StatelessWidget {
  final Map<String, String> place;

  PlaceDetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place['name']!),
      ),
      body: Center(
        child: Text(
          'Detalhes sobre ${place['name']}',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
