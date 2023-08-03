import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/strings.dart';

class CountryCodePickerWidget extends StatelessWidget {
  const CountryCodePickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 80.h,
      decoration: BoxDecoration(
          color: CustomColor.primaryBackgroundColor,
          border: Border.all(color: CustomColor.whiteColor, width: 1),
          borderRadius: BorderRadius.circular(Dimensions.radius * 1)
      ),
      child: const CountryCodePicker(
        showOnlyCountryWhenClosed: true,
        showDropDownButton: true,
        alignLeft: true,
        initialSelection: Strings.selectCountry,
        backgroundColor: CustomColor.inputBackgroundColor,
      ),
    );
  }
}
