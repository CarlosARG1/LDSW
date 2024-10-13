import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LDSW',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello world',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              Container(
                color: const Color.fromARGB(255, 107, 185, 18),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Fila 1'),
                    SizedBox(width: 10),
                    Text('Fila 2'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: const Color.fromARGB(255, 114, 112, 214),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Text('Columna 1'),
                    SizedBox(height: 10),
                    Text('Columna 2'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.cyan,
                  ),
                  Text(
                    'Un Stack',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Un contenedor',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


