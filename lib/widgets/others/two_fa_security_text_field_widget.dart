import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/strings.dart';

class TwoFaSecurityTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final Color backgroundColor;
  final Color hintTextColor;
  final int? maxLine;
  final IconData? iconData;

  const TwoFaSecurityTextFieldWidget(
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
          borderSide: const BorderSide(color: CustomColor.primaryColor, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 1),
          borderSide: const BorderSide(color: CustomColor.primaryColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 1),
          borderSide:
          const BorderSide(color: CustomColor.primaryColor, width: 1),
        ),

        filled: true,
        // prefixIcon: Icon(iconData, color: CustomColor.whiteColor,),
        fillColor: backgroundColor,
        contentPadding: EdgeInsets.only(
          left: Dimensions.defaultPaddingSize,
        ),
        suffixIcon: Container(
            width: 50.w,
            height: 70.h,
            decoration: BoxDecoration(
              color: CustomColor.primaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.radius * 1),
                bottomRight: Radius.circular(Dimensions.radius * 1),
              ),
            ),
            child: InkWell(
              onTap: () {
                Clipboard.setData(
                    ClipboardData(text: Strings.twoFactorAuthCode))
                    .then((_) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("copied to clipboard")));
                });
              },
              child: const Icon(
                Icons.copy_all,
                color: CustomColor.whiteColor,
              ),
            )),
        hintText: hintText,
        hintStyle: TextStyle(
            color: hintTextColor, fontSize: 14, fontWeight: FontWeight.w600),
      ),
    );
  }
}
