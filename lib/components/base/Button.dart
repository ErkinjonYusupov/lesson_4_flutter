import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  String text;
  Color color;
  Function? click;
  Button({super.key, required this.text, required this.color, this.click});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (click != null) {
          click!();
        }
      },
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(7)),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          )),
    );
  }
}
