import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed
  });
  final String text;
final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: buttonColor,
        minimumSize: const Size(
          double.infinity,
          50
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: const BorderSide(color: buttonColor,width: 3),
        )
      ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(fontSize: 17),
          
        ));
  }
}
