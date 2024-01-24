import 'package:flutter/material.dart';

import '../models/dummy_data.dart';
import '../widgets/film_cell.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    var films = dummydata;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Films'),
      ),
      body: films.isEmpty
          ? const Center(child: Text('No Movies'))
          : ListView.builder(
              itemBuilder: (context, index) {
                final film = films[index];
                return FilmCell(film: film);
              },
              itemCount: films.length,
            ),
    );
  }
}
