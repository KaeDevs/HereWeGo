import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List q = ["Parallax ⬇️", "You Have No Enemies", "Hope", "Cook", "Bok."];
  List img = [
    "images/four.jpg",
    "images/one.jpg",
    "images/three.jpg",
    "images/two.jpg",
    "images/five.jpg"
  ];
  late ScrollController controller;
  @override
  void initState() {
    // TODO: implement initState
    controller = ScrollController();
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(
          controller: controller,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              height: size.height,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(),
              width: size.width,
              child: Stack(
                children: [
                  Container(
                    height: size.height,
                    width: size.width,
                    transform: Matrix4.identity()
                      ..translate(
                          0.0,
                          controller.hasClients
                              ? (-(index * size.height) +
                                      controller.position.pixels) /
                                  2
                              : 1),
                    child: Image.asset(
                      img[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Center(
                    child: Text(
                      q[index],
                      style: GoogleFonts.anton(
                        // Try Oswald, BebasNeue, or Bangers too
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
