import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neumorphic Toggle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE0E5EC), // subtle gray
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() => isOn = !isOn),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 60,
            width: 120,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFE0E5EC), // background
              borderRadius: BorderRadius.circular(50),
              boxShadow: isOn
                  ? const [
                      BoxShadow(
                        color: Color(0xFFA3B1C6),
                        offset: Offset(4, 4),
                        blurRadius: 10,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4, -4),
                        blurRadius: 10,
                      ),
                    ]
                  : const [
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(4, 4),
                        blurRadius: 10,
                      ),
                      BoxShadow(
                        color: Color(0xFFA3B1C6),
                        offset: Offset(-4, -4),
                        blurRadius: 10,
                      ),
                    ],
            ),
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 200),
              alignment: isOn ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFFCBD4E1), // thumb color
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: isOn ? Colors.white : const Color(0xFFA3B1C6),
                      offset: isOn ? const Offset(-2, -2) : const Offset(2, 2),
                      blurRadius: 5,
                    ),
                    BoxShadow(
                      color: isOn ? const Color(0xFFA3B1C6) : Colors.white,
                      offset: isOn ? const Offset(2, 2) : const Offset(-2, -2),
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

