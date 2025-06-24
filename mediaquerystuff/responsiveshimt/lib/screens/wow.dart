import 'package:flutter/material.dart';

class UnresponsivePage extends StatelessWidget {
  const UnresponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        centerTitle: true,
        title: const Text(
          'Unresponsive Stuff',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Centered first row
              Center(
                child: Wrap(
                  // mainAxisSize: MainAxisSize.min,
                  runSpacing: 20,
                  spacing: 20,
                  children: List.generate(5, (index) {
                    final colors = [
                      Colors.red,
                      Colors.green,
                      Colors.blue,
                      Colors.orange,
                      Colors.purple,
                      Colors.teal,
                    ];
                    return Container(
                      width: 300,
                      height: 200,
                      margin: const EdgeInsets.only(right: 24),
                      decoration: BoxDecoration(
                        color: colors[index % colors.length],
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
        
              const SizedBox(height: 32),
        
              
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    buildCard(Colors.amber),
                    const SizedBox(width: 24),
                    buildCard(Colors.cyan),
                  ],
                ),
              ),

              
              const SizedBox(height: 32),


              Image.asset("assets/images/zorod.png", scale: 1,)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(Color color) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
    );
  }
}
