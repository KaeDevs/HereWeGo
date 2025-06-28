import 'package:breadcrumb/screens/zoro.dart';
import 'package:flutter/material.dart';

import '../widgets/breadCrumbBar.dart';
import 'breadCrumbs.dart';

class LuffyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Luffy'), backgroundColor: Colors.redAccent),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // centers vertically
          crossAxisAlignment: CrossAxisAlignment.center, // centers horizontally
          children: [
            BreadcrumbBar(
              crumbs: ['Home', 'Luffy'],
              screens: [BreadCrumb(), null],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ZoroScreen()),
                );
              },
              child: Text("Go to Zoro"),
            ),
          ],
        ),
      ),
    );
  }
}
