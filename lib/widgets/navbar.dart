import 'package:chozy/theme.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const Navbar({super.key, required this.imageUrl, required this.isActive});
  // const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          width: 26,
        ),
        Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 3,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(1000),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
