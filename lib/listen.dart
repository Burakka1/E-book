import 'package:flutter/material.dart';

class Listen extends StatefulWidget {
  @override
  _ListenState createState() => _ListenState();
}

class _ListenState extends State<Listen> {
  String selectedChapter = 'Chapter 2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff38e56),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xfff38e56), Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.center,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Image.asset('assets/image 4.png', height: 300),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: LinearProgressIndicator(
                
                value: 0.6,
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 40, 47, 65)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '17.13',
                    style: TextStyle(
                      color:Color.fromARGB(255, 40, 47, 65),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '24.56',
                    style: TextStyle(
                      color: Color.fromARGB(255, 40, 47, 65),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'Chapter : 2',
                style: TextStyle(
                  color: Color.fromARGB(255, 40, 47, 65),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 50,
                  icon: const Icon(Icons.skip_previous, color: Color.fromARGB(255, 40, 47, 65)),
                  onPressed: () {
                  },
                ),
                IconButton(
                  iconSize: 50,
                  icon: const Icon(Icons.pause, color: Color.fromARGB(255, 40, 47, 65)),
                  onPressed: () {
                  },
                ),
                IconButton(
                  iconSize: 50,
                  icon: const Icon(Icons.skip_next, color:Color.fromARGB(255, 40, 47, 65)),
                  onPressed: () {
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.book_outlined, color: Colors.grey),
                  onPressed: () {
                  },
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.format_list_bulleted_sharp, color: Colors.grey),
                  onPressed: () {
                  },
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.nightlight_outlined, color: Colors.grey),
                  onPressed: () {
                  },
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.headset_outlined, color: Colors.black),
                  onPressed: () {
                  },
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
