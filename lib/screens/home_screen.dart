import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:app_films/providers/movies_provider.dart';
import 'package:app_films/search/search_delegate.dart';
import 'package:app_films/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas en cines'),
        actions: [
          IconButton(
              onPressed: () =>
                  showSearch(context: context, delegate: MovieSearchDelegate()),
              icon: const Icon(Icons.search_outlined)),
        ],
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main-background.jpg'),
              fit: BoxFit.cover,
              opacity: 0.3),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Main cards
              CardSwiper(movies: moviesProvider.onDisplayMovies),
              // Films slider
              MovieSlider(
                movies: moviesProvider.popularMovies,
                title: 'Populares',
                onNextPage: () => moviesProvider.getPopularMovies(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
