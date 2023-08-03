import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/strings.dart';

class AmountInputTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final Color backgroundColor;
  final Color hintTextColor;
  final int? maxLine;
  final IconData? iconData;

  const AmountInputTextFieldWidget(
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
          borderSide: BorderSide(color: CustomColor.whiteColor.withOpacity(0.5), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 1),
          borderSide: BorderSide(color: CustomColor.whiteColor.withOpacity(0.5), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 1),
          borderSide:
          const BorderSide(color: CustomColor.primaryColor, width: 1),
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
        // prefixIcon: Icon(iconData, color: CustomColor.whiteColor,),
        fillColor: backgroundColor,
        contentPadding: EdgeInsets.only(
          left: Dimensions.defaultPaddingSize,),
        suffixIcon: Container(
            width: 80.w,
            height: 70.h,
            decoration: BoxDecoration(
              color: CustomColor.primaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.radius * 1),
                bottomRight: Radius.circular(Dimensions.radius * 1),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: Dimensions.defaultPaddingSize * 0.75),
              child: Text(Strings.usd, textAlign: TextAlign.center, style: const TextStyle(
                  color: CustomColor.whiteColor, fontSize: 20
              ),),
            )
        ),
        // suffixText: Strings.usd,

        hintText: hintText,
        hintStyle: TextStyle(
            color: hintTextColor, fontSize: 14, fontWeight: FontWeight.w600),
      ),
    );
  }
}
