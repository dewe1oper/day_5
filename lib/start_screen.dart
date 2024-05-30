import 'package:day_5/home_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final String imageUrl =
      "https://i.pinimg.com/originals/65/5d/2d/655d2da400a648abca600766a89deead.gif";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                width: double.infinity,
                height: 500,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(150),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.orange.shade100,
                      Colors.orange.shade300,
                    ],
                  ),
                ),
                child: Image.network(
                  "https://static.vecteezy.com/system/resources/previews/024/724/631/non_2x/a-happy-smiling-young-college-student-with-a-book-in-hand-isolated-on-a-transparent-background-generative-ai-free-png.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 70),
              const Text(
                "Xush kelibsiz mening Flutter Challenge'imga!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return HomeScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.orange.shade200,
                      width: 4,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "START",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
