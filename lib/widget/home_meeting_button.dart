import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class HomeMeetingButton extends StatelessWidget {
  const HomeMeetingButton(
      {super.key, required this.onPressed, required this.icon,required this.text});
  final Function() onPressed;
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.05),
                    offset: const Offset(0, 4))
              ]),
          child: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        )
      ]),
    );
  }
}
