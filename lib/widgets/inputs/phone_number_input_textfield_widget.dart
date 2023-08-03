import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/strings.dart';

class PhoneNumberInputTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final Color backgroundColor;
  final Color hintTextColor;
  final int? maxLine;
  final IconData? iconData;

  const PhoneNumberInputTextFieldWidget(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.keyboardType,
      this.readOnly = false,
      required this.backgroundColor,
      required this.hintTextColor,
      this.maxLine,
      this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLine,
      readOnly: readOnly!,
      style: CustomStyler.textFieldLableStyle,
      controller: controller,
      keyboardType: keyboardType,
      validator: (String? value) {
        if (value!.isEmpty) {
          return null;
        } else {
          return Strings.pleaseFillOutTheField;
        }
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 1),
          borderSide: BorderSide(
              color: CustomColor.whiteColor.withOpacity(0.5), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 1),
          borderSide: BorderSide(
              color: CustomColor.whiteColor.withOpacity(0.5), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 1),
          borderSide: BorderSide(
              color: CustomColor.whiteColor.withOpacity(0.5), width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 1),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 1),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        filled: true,
        fillColor: backgroundColor,
        prefixIcon: CountryCodePicker(
          showFlag: false,
          backgroundColor: CustomColor.whiteColor.withOpacity(0.5),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
            color: hintTextColor, fontSize: 14, fontWeight: FontWeight.w600),
      ),
    );
  }
}
