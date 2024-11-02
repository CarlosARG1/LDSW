import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'models/covid_data.dart';

class CovidDataScreen extends StatefulWidget {
  @override
  _CovidDataScreenState createState() => _CovidDataScreenState();
}

class _CovidDataScreenState extends State<CovidDataScreen> {
  late Future<List<CovidData>> futureCovidData;

  @override
  void initState() {
    super.initState();
    futureCovidData = fetchCovidData();
  }

  Future<List<CovidData>> fetchCovidData() async {
    final response = await http.get(Uri.parse('https://api.covidtracking.com/v1/states/current.json'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => CovidData.fromJson(data)).toList();
    } else {
      throw Exception('Error al cargar los datos de COVID');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos COVID'),
      ),
      body: Center(
        child: FutureBuilder<List<CovidData>>(
          future: futureCovidData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<CovidData> data = snapshot.data!;
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(10.0),
                    child: ListTile(
                      title: Text(data[index].state),
                      subtitle: Text(
                          'Positivos: ${data[index].positive}\nNegativos: ${data[index].negative}'),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
