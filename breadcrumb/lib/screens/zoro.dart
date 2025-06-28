import 'package:breadcrumb/screens/luffy.dart';
import 'package:breadcrumb/screens/sanji.dart';
import 'package:flutter/material.dart';

import '../widgets/breadCrumbBar.dart';
import 'breadCrumbs.dart';

class ZoroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Zoro'), backgroundColor: Colors.green),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BreadcrumbBar(
              crumbs: ['Home', 'Luffy', 'Zoro'],
              screens: [BreadCrumb(), LuffyScreen(), null],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SanjiScreen()));
              },
              child: Text("Go to Sanji",
  style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.0,
    color: Colors.white,
  ),),
            ),
          ],
        ),
      ),
    );
  }
}
