import 'package:flutter/material.dart';
import 'package:supa_movies_app/models/dummy_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var films = dummydata;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Films'),
        ),
        body: Center(
          child: Text("Movies -   ${films.length}"),
        ));
  }
}
