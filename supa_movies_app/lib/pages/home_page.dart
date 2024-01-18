import 'package:flutter/material.dart';
import 'package:supa_movies_app/models/dummy_data.dart';

import '../data/initialise_supabase.dart';
import '../models/film.dart';
import '../widgets/film_cell.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var filmsFuture = supabase
        .from('films')
        .select()
        .withConverter<List<Film>>((data) => data.map(Film.fromJson).toList());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Films'),
      ),
      body: FutureBuilder(
          future: filmsFuture,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            final films = snapshot.data!;
            return ListView.builder(
              itemBuilder: (context, index) {
                final film = films[index];
                return FilmCell(film: film);
              },
              itemCount: films.length,
            );
          }),
    );
  }
}
