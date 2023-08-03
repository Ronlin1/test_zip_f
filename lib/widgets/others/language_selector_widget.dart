import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/language_selector_controller.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';

class LanguageSelectorWidget extends StatelessWidget {
  LanguageSelectorWidget({Key? key}) : super(key: key);
  final _controller = Get.put(LanguageSelectorController());


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
      child: DropdownButtonHideUnderline(
          child: Obx(() => DropdownButton(
            dropdownColor: CustomColor.primaryColor,
            icon: const Icon(
              Icons.arrow_drop_down,
              color: CustomColor.whiteColor,
            ),
            isExpanded: true,
            style: CustomStyler.textStyler,
            value: _controller.selected.value,
            items: _controller.listItem.map((valueItem) {
              return DropdownMenuItem(
                value: valueItem,
                child: Text(
                    valueItem,
                    style: CustomStyler.languageTextStyle
                ),
              );
            }).toList(),
            onChanged: (newValue) {
              _controller.setSelected(newValue.toString());
            },
          ),)
      ),
    );
  }
}

