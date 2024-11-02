import 'package:flutter/material.dart';
import 'covid_data_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MoviesCat'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CovidDataScreen()),
                );
              },
              child: Text('Ver Datos COVID'),
            ),
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Ir a la Pantalla de Bienvenida'),
            ),
          ],
        ),
      ),
    );
  }
}
