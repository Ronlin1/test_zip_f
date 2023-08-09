import 'package:flutter/material.dart';
import 'package:charify/components/text_field_container.dart'; // Import the TextFieldContainer widget
import 'package:charify/utils/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final TextInputType?
      keyboardType; // Make keyboardType optional // Add keyboardType parameter
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.keyboardType, // Add keyboardType parameter
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      // Use TextFieldContainer widget here
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        keyboardType: keyboardType, // Set the keyboardType
        decoration: InputDecoration(
          icon: Icon(Icons.email, color: kPrimaryColor),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
