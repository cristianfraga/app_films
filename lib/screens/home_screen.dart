
import 'package:app_films/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas en cines'),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_outlined)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            // Main cards
            CardSwiper(),
            // Films slider
            MovieSlider(),
          ],
        ),
      ),
    );
  }
}