import 'package:e_book/listen.dart';
import 'package:e_book/read.dart';
import 'package:flutter/material.dart';

class Chapters extends StatefulWidget {
  @override
  _ChaptersState createState() => _ChaptersState();
}

class _ChaptersState extends State<Chapters> {
  String? selectedChapter;

  @override
  void initState() {
    super.initState();
    selectedChapter = null;
  }

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
        actions: [
          IconButton(
            icon: const Icon(Icons.share, color: Colors.white),
            onPressed: () {
            },
          ),
          IconButton(
            icon: const Icon(Icons.bookmark_border_outlined, color: Colors.white),
            onPressed: () {
            },
          ),
          IconButton(
            icon: const Icon(Icons.star_border, color: Colors.white),
            onPressed: () {
            },
          ),
        ],
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
            const Padding(
              padding: EdgeInsets.only(left: 15, top:10),
              child: Text(
                'Chapters',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: DropdownButton<String>(
                  value: selectedChapter,
                  isExpanded: true,
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                  underline: Container(),
                  hint: const Text(
                    'Select Chapter',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                    icon: const Icon(
    Icons.keyboard_arrow_down,
    color: Colors.red,
  ),
                  items: <String>['Chapter 1', 'Chapter 2', 'Chapter 3', 'Chapter 4']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedChapter = newValue;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 32),
            Container(
              margin: EdgeInsets.only(top:80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 137,
                    height: 52,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 66, 61, 61),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: TextButton(
                      onPressed: () {
                                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Read()),
            );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.menu_book_outlined,
                            color: Colors.white,
                            size: 24,
                          ),
                          Text(
                            'Read',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 137,
                    height: 52,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 66, 61, 61),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: TextButton(
                      onPressed: () {
                            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Listen()),
            );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.headset,
                            color: Colors.white,
                            size: 24,
                          ),
                          Text(
                            'Listen',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
