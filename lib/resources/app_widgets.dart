import 'package:flutter/material.dart';
import 'package:imdbapp/resources/app_images.dart';
import 'package:imdbapp/resources/app_strings.dart';

class CustomMovieCard extends StatelessWidget {
  const CustomMovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 170,
        height: 250,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 0.2,
              color: Colors.grey,
              spreadRadius: 0.5,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 130,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  AppImages.movieImage,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              AppStrings.movieTitle,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 5),
            const Text(
              AppStrings.movieGenre,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey),
            ),
            const SizedBox(height: 5),
            Container(
              height: 20,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.green.shade300,
              ),
              child: const Center(
                child: Text(
                  AppStrings.movieRating,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
