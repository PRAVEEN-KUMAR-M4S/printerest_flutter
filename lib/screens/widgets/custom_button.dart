import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String txt;
  const CustomButton({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 40,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 209, 23, 10),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(txt),
    );
  }
}
