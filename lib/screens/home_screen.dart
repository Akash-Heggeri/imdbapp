import 'package:flutter/material.dart';
import 'package:imdbapp/resources/app_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: const Text(
          'IMDB Movies List',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.73,
              crossAxisSpacing: 15,
              mainAxisSpacing: 20,
            ),
            itemCount: 10,
            itemBuilder: (context, index) => const CustomMovieCard(),
          ),
        ),
      ),
    );
  }
}
