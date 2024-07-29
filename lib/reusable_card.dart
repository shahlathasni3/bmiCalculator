import 'package:flutter/material.dart';

class reusableCard extends StatelessWidget {
  final Color kolor;
  final Widget cardChild;
  reusableCard({required this.kolor, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: kolor,
      ),
    );
  }
}
