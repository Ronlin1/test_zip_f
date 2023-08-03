import 'package:flutter/material.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';

class TextLabelsWidget extends StatelessWidget {
  const TextLabelsWidget({Key? key, required this.textLabels}) : super(key: key);

  final String textLabels;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.marginSize * 0.5),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              textLabels,
              style: CustomStyler.categoriesStyle,
            ),
          )
        ],
      ),
    );
  }
}
