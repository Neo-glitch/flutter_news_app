import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_news_app/pages/home.dart';
import 'package:gap/gap.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      color: Colors.black12,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/images/news.jpg",
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Gap(20),
              const Text(
                "News from around the \nworld just for you",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(20),
              const Text(
                "Best time to read, take your time to read \na little more of this world",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Gap(40),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize:
                      Size.fromWidth(MediaQuery.of(context).size.width / 1.2),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  elevation: 3.0,
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
