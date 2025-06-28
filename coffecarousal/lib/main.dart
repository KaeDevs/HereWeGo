import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CoffeeCarousel(),
    theme: ThemeData(fontFamily: 'Roboto'),
  ));
}

class CoffeeCarousel extends StatefulWidget {
  @override
  State<CoffeeCarousel> createState() => _CoffeeCarouselState();
}

class _CoffeeCarouselState extends State<CoffeeCarousel> {
  final List<Map<String, String>> coffeeItems = [
    {
      'image': 'assets/images/coffe1.png',
      'name': 'Latte',
      'price': '₹120',
    },
    {
      'image': 'assets/images/coffe2.png',
      'name': 'Cappuccino',
      'price': '₹150',
    },
    {
      'image': 'assets/images/coffe3.jpg',
      'name': 'Espresso',
      'price': '₹140',
    },
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final currentItem = coffeeItems[_currentIndex];

    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text(
          '☕ Coffee Carousel',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
            itemCount: coffeeItems.length,
            itemBuilder: (context, index, realIndex) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 230, 159, 101).withOpacity(0.3),
                          blurRadius: 40,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    coffeeItems[index]['image']!,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ],
              );
            },
            options: CarouselOptions(
              height: 300,
              enlargeFactor: 0.4,
              enlargeCenterPage: true,
              viewportFraction: 0.5,
              enableInfiniteScroll: false,
              autoPlay: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() => _currentIndex = index);
              },
            ),
          ),
          SizedBox(height: 24),
          Text(
            currentItem['name']!,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.brown[900],
            ),
          ),
          SizedBox(height: 8),
          Text(
            currentItem['price']!,
            style: TextStyle(
              fontSize: 18,
              color: Colors.brown[600],
            ),
          ),
        ],
      ),
    );
  }
}
