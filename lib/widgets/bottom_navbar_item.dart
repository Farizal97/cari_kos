import 'package:cari_kos/theme.dart';
import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          'assets/icon_home.png',
          width: 26,
        ),
        Spacer(),
        Container(
          width: 30,
          height: 4,
          decoration: BoxDecoration(
            color: purpleColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(1000),
            )
          ),
        )
      ],
    );
  }
}
