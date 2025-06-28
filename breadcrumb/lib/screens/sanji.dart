import 'package:breadcrumb/screens/breadCrumbs.dart';
import 'package:flutter/material.dart';

import '../widgets/breadCrumbBar.dart';
import 'luffy.dart';
import 'zoro.dart';

class SanjiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sanji'), backgroundColor: Colors.orange),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BreadcrumbBar(
              crumbs: ['Home', 'Luffy', 'Zoro', 'Sanji'],
              screens: [BreadCrumb(), LuffyScreen(), ZoroScreen(), null],
            ),
            SizedBox(height: 20),
            Text(
              "You're on Sanji's screen 🍜",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.brown[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
