import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonGrey extends StatelessWidget {
  final String text;
  const CustomButtonGrey({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(color: Colors.grey[600],borderRadius: BorderRadius.circular(25)),
      child: Text(text),
    );
  }
}
