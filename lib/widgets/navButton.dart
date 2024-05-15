import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  NavButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue[900],
        ),
        child: ElevatedButton(
          onPressed: () => onPressed(),
          child: Text(text),
        ));
  }
}
