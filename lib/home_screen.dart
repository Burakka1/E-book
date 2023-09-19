import 'package:e_book/widgets.dart';
import 'package:flutter/material.dart';


class home_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
          actions: const [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/image 3.png'),
            ),
            SizedBox(width: 16),
          ],
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Hello Tommy",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Keep Exploring",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              buildSearchBar(),
              buildFeaturedImageCard(),
              buildSectionTitle("Popular Authors"),
              buildAuthorsCarousel(),
              buildSectionTitle("Continue Reading"),
              buildContinueReadingCarousel(context),
              buildSectionTitle("Trending Books"),
              buildCategories(context),
              buildTrendingBooksCarousel(),
            ],
          ),
        ),
      ),
    );
  }
}
