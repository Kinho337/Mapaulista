import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Detalhe do Lugar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlaceDetailScreen(),
    );
  }
}

class PlaceDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Cor de fundo
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0, // Remove sombra
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      'Santos',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://example.com/santos_image1.jpg', // URL da imagem 1
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Santos, uma cidade costeira no estado de São Paulo, no sul do Brasil, é uma importante extensão do porto marítimo que vai do continente à ilha de São Vicente. O centro urbano da ilha faz fronteira com a Baía de Santos, conhecida pela sua extensa praia e pelo jardim adjacente de 5,3 km de comprimento. O Museu do Café, que ocupa uma bolsa de mercadorias de 1922 preservada na zona histórica, explora o papel fundamental da área para o comércio de café do Brasil.',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 16),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://example.com/santos_image2.jpg', // URL da imagem 2
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(double.infinity, 50), // Largura cheia
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        // Navegar para a tela de Catálogo
                      },
                      child: Text('Ir ao Catálogo'),
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        minimumSize: Size(double.infinity, 50), // Largura cheia
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        // Navegar para a tela de Mapa
                      },
                      child: Text('Ir ao Mapa'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
