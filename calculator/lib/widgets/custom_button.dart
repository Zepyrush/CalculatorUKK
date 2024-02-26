import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.buttonColor = const Color(0xFF171717),
      required this.buttonText,
      required this.onPressed,
      this.textColor = Colors.white,
      this.fontWeight = FontWeight.normal,
      this.fontSize = 30});
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;
  final FontWeight fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.height * 0.09,
      height: size.height * 0.08,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: buttonColor,
            shape: const CircleBorder(),
          ),
          child: Text(buttonText,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ))),
    );
  }
}
