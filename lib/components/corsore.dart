import 'package:flutter/material.dart';

class CorSore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Image.asset('assets/images/corsore_image/m1.jpg'),
        SizedBox(
          width: 5,
        ),
        Image.asset('assets/images/corsore_image/m2.jpg'),
        SizedBox(
          width: 5,
        ),
        Image.asset('assets/images/corsore_image/m3.jpg'),
      ]),
    );
  }
}
