 import 'package:e_book/details.dart';
import 'package:e_book/first_screen.dart';
import 'package:flutter/material.dart';

import 'models/author.dart';

Widget buildSearchBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget buildFeaturedImageCard() {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset(
          'assets/image 7.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget buildAuthorsCarousel() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(authors.length, (index) {
          return Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(authors[index]['image']),
                ),
                const SizedBox(height: 8),
                Text(authors[index]['name'], style: const TextStyle(color: Color(0xFFF47575))),
              ],
            ),
          );
        }),
      ),
    );
  }
Widget buildContinueReadingCarousel(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        buildBookCard(
          bookTitle: "Harry Potter",
          authorName: "Author 0",
          imagePath: "assets/image 3.jpeg",
          progress: 75,
        ),
        buildBookCard(
          bookTitle: "The Arsonist",
          authorName: "Author 1",
          imagePath: "assets/image 4.png",
          progress: 32,
          onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsPage()),
            );
          },
        ),
        buildBookCard(
          bookTitle: "The Guest",
          authorName: "Author 2",
          imagePath: "assets/image 5.jpg",
          progress: 10,
        ),
      ],
    ),
  );
}

Widget buildCategories(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final categorySpacing = screenWidth * 0.03; // Ekran genişliğinin 3%'i kadar

  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        SizedBox(width: categorySpacing),
        buildCategoryButton("Fantasy", true, ),
        SizedBox(width: categorySpacing),
        buildCategoryButton("Comedy", false, ),
        SizedBox(width: categorySpacing),
        buildCategoryButton("Horror", false, ),
        SizedBox(width: categorySpacing),
        buildCategoryButton("Fiction", false, ),
        SizedBox(width: categorySpacing),
        buildCategoryButton("Action", false, ),
        SizedBox(width: categorySpacing),
      ],
    ),
  );
}
  Widget buildCategoryButton(String text, bool isSelected) {
    return ElevatedButton(
      
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        
        backgroundColor: isSelected ? const Color(0xFF203A60) : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  Widget buildTrendingBooksCarousel() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildTrendingBookCard("This Is How It Always Is", "Author 3", "assets/image 8.jpg", 8.5),
          buildTrendingBookCard("In a Land Of Paper Gods", "Author 4", "assets/image 9.jpeg", 4.2),
          buildTrendingBookCard("Lord Of The Rings", "Author 5", "assets/image 10.jpg", 6.7),
        ],
      ),
    );
  }
Widget buildBookCard({
  required String bookTitle,
  required String authorName,
  required String imagePath,
  required int progress,
  VoidCallback? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 120,
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          SizedBox(
            width: 160,
            height: 200,
            child: Image.asset(imagePath),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 80,
                child: LinearProgressIndicator(
                  value: progress / 100,
                  backgroundColor: Colors.grey,
                  valueColor: const AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 6, 77, 136)),
                ),
              ),
              SizedBox(
                width: 30,
                child: Text(
                  " $progress%",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 6, 77, 136),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            bookTitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            authorName,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ),
  );
}


  Widget buildTrendingBookCard(String bookTitle, String authorName, String imagePath, double rating) {
    return Container(
      width: 160,
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 160,
            height: 200,
            child: Image.asset(imagePath),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.yellow),
              Text("$rating"),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            bookTitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            authorName,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

