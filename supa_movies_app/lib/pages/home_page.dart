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
        body: ListView.builder(
          itemBuilder: (context, index) {
            final film = films[index];
            return InkWell(
              onTap: () {},
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: HeroMode(
                      enabled: true,
                      child: Hero(
                        tag: film.imageUrl,
                        child: Image.network(film.imageUrl),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    top: null,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black,
                          Colors.black.withAlpha(0),
                        ],
                      )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          film.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: films.length,
        ));
  }
}
