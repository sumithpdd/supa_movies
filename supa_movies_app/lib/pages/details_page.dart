import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:supa_movies_app/models/dummy_data.dart';
import '../models/film.dart';
import '../widgets/film_cell.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.film});

  final Film film;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late final List<Film> relatedFilmsFuture = dummydata;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.film.title),
      ),
      body: ListView(
        children: [
          Hero(
            tag: widget.film.imageUrl,
            child: Image.network(widget.film.imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  DateFormat.yMMMd().format(widget.film.releaseDate),
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.film.overview,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 24),
                const Text(
                  'You might also like:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Wrap(
            children: relatedFilmsFuture
                .map((film) => InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailsPage(film: film)));
                      },
                      child: FractionallySizedBox(
                        widthFactor: 0.5,
                        child: FilmCell(
                          film: film,
                          isHeroEnabled: false,
                          fontSize: 16,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
