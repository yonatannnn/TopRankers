import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  CustomTextField({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.deepPurple, // Customize cursor color
        style: TextStyle(
          color: Colors.black87, // Customize text color
          fontSize: 16.0, // Customize font size
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 16.0), // Add padding inside text field
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey), // Customize hint text color
          filled: true,
          fillColor: Colors.grey[200], // Customize text field background color
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(10.0), // Customize border radius
            borderSide: BorderSide.none, // Hide border side
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.deepPurple, width: 2.0),
          ),
        ),
      ),
    );
  }
}
