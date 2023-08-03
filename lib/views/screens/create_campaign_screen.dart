import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/create_campaign_controller.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';
import 'package:efunding/widgets/buttons/primary_button_widget.dart';
import 'package:efunding/widgets/inputs/description_input_text_field_widget.dart';
import 'package:efunding/widgets/inputs/input_text_field.dart';
import 'package:efunding/widgets/labels/text_labels_widget.dart';
import 'package:efunding/widgets/others/attach_doc_widget.dart';
import 'package:efunding/widgets/others/categories_selector_widget.dart';
import 'package:efunding/widgets/others/datetime.dart';
import 'package:efunding/widgets/others/input_photos_widget.dart';

class CreateCampaignScreen extends StatelessWidget {
  CreateCampaignScreen({Key? key}) : super(key: key);
  final _controller = Get.put(CreateCampaignController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.createCampaign,
          style: const TextStyle(color: CustomColor.whiteColor),
        ),
        leading: const BackButtonWidget(),
        backgroundColor: CustomColor.appBarColor,
        elevation: 0,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        _selectCategoriesWidget(context),
        _inputWidget(context),
        _proceedButtonWidget(context),
        addVerticalSpace(20.h),
      ],
    );
  }

  _selectCategoriesWidget(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
          child: TextLabelsWidget(
            textLabels: Strings.selectCategories,
          ),
        ),
        const CategoriesSelectorWidget(),
      ],
    );
  }

  _inputWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
      child: Column(
        children: [
          _titleWidget(context),
          _descriptionWidget(context),
          _campaignGoalWidget(context),
          _deadlineWidget(context),
          _photosWidget(context),
          _attachFileWidget(context),
        ],
      ),
    );
  }


  _titleWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        addVerticalSpace(10.h),
        TextLabelsWidget(
          textLabels: Strings.title,
        ),
        DescriptionInputTextFieldWidget(
          hintText: Strings.title,
          hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
          backgroundColor: CustomColor.primaryBackgroundColor,
          controller: _controller.titleController,
        ),
      ],
    );
  }

  _descriptionWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        addVerticalSpace(10.h),
        TextLabelsWidget(
          textLabels: Strings.description,
        ),
        DescriptionInputTextFieldWidget(
          hintText: Strings.writeYourDescriptionForFundRise,
          maxLine: 4,
          hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
          backgroundColor: CustomColor.primaryBackgroundColor,
          controller: _controller.descriptionController,
        ),
      ],
    );
  }

  _campaignGoalWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        addVerticalSpace(10.h),
        TextLabelsWidget(
          textLabels: Strings.campaignGoal,
        ),
        InputTextField(
          hintText: Strings.yourGoal,
          iconData: Icons.attach_money,
          hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
          backgroundColor: CustomColor.primaryBackgroundColor,
          controller: _controller.amountController,
        ),
      ],
    );
  }

  _deadlineWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        addVerticalSpace(10.h),
        TextLabelsWidget(
          textLabels: Strings.deadline,
        ),
        const DateTimeWidget(),
      ],
    );
  }

  _photosWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        addVerticalSpace(10.h),
        TextLabelsWidget(
          textLabels: Strings.image,
        ),
        InputPhotosWidget()
      ],
    );
  }

  _attachFileWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        addVerticalSpace(10.h),
        TextLabelsWidget(
          textLabels: Strings.attachDocument,
        ),
        AttachDocWidget(),
      ],
    );
  }

  _proceedButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.proceed,
      onPressed: () {
        Get.toNamed(Routes.waitForApprovalScreen);
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }
}
