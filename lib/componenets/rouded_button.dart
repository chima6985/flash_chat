import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {super.key, this.colour, this.title, required this.onPressed});
  final Color? colour;
  final String? title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 60,
          child: Text(
            title!,
          ),
        ),
      ),
    );
  }
}
