import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "About Us",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ImageSlideshow(
                indicatorColor: Colors.blue,
                onPageChanged: (value) {
                  debugPrint('Page changed: $value');
                },
                autoPlayInterval: 3000,
                isLoop: true,
                children: [
                  Image.asset(
                    'assets/kitchen.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/food.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/foodimage.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Text(
                    "Welcome to FE food and beverage, your ultimate destination for convenient and delicious food delivery!",
                    style: TextStyle(fontSize: 13.0),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "At FE food and beverage, we understand the hustle and bustle of modern life, which is why we've crafted a seamless platform to satisfy your cravings with just a few taps on your device. Our mission is simple: to connect you with the best local eateries and deliver mouthwatering meals straight to your doorstep, hassle-free.",
                    style: TextStyle(fontSize: 13.0),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "Whether you're craving comforting classics, exploring exotic flavors, or seeking healthy options, FE food and beverage has you covered. Our carefully curated selection of restaurants offers a diverse range of cuisines to cater to every taste bud and dietary preference.",
                    style: TextStyle(fontSize: 13.0),
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
