import 'package:flutter/material.dart';

class BreadcrumbBar extends StatelessWidget {
  final List<String> crumbs;
  final List<Widget?> screens;
  const BreadcrumbBar({required this.crumbs, required this.screens});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(crumbs.length, (index) {
        final isLast = crumbs.length - 1;

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  if (index != isLast) {
                    Navigator.pushReplacement(
                        context,

                        MaterialPageRoute(
                            builder: (context) => screens[index]!));
                  }
                },
                child: Text(crumbs[index])),
            if (index != isLast) const Text(' > ')
          ],
        );
      }),
    );
  }
}
