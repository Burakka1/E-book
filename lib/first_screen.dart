import 'package:e_book/home_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(firstscreen());
}

class firstscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 55),
              Image.asset(
                'assets/image1.png', 
                height: 150,
              ),
              const SizedBox(height: 25),
              const Text(
                'Keep reading,',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                   fontFamily: 'WorkSans',

                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'You\'ll fall in love',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'WorkSans',
                ),
              ),
              const SizedBox(height: 60),
              const Text(
                ' A library of bite-sized business eBooks on soft skills and access to 30+ million books in various languages with an easy and simple monthly subscription and read anywhere, any devices.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'WorkSans',
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF47575),
                  minimumSize: const Size(200, 50),
                ),
                child: const Text(
                  'Start your journey',
                  style: TextStyle(
                    
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => home_screen()),
            );
          },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFF47575),
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}