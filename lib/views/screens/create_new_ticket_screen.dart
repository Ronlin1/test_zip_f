import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/create_new_ticket_controller.dart';
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

class CreateNewTicketScreen extends StatelessWidget {
  CreateNewTicketScreen({Key? key}) : super(key: key);
  final _controller = Get.put(CreateNewTicketController());
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.createNewTicket,
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
        _inputFieldWidget(context),
        _saveChangeWidget(context),
      ],
    );
  }

  _inputFieldWidget(BuildContext context) {
    return Form(
        key: formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
          child: Column(
            children: [
              addVerticalSpace(40.h),
              InputTextField(
                hintText: Strings.profileName,
                iconData: Icons.account_circle,
                hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
                backgroundColor: CustomColor.primaryBackgroundColor,
                controller: _controller.nameController,
              ),
              addVerticalSpace(20.h),
              InputTextField(
                hintText: Strings.editProfileEmail,
                iconData: Icons.email,
                hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
                backgroundColor: CustomColor.primaryBackgroundColor,
                controller: _controller.emailController,
              ),
              addVerticalSpace(20.h),
              TextLabelsWidget(
                textLabels: Strings.subject,
              ),
              DescriptionInputTextFieldWidget(
                hintText: Strings.writeHere,
                maxLine: 1,
                hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
                backgroundColor: CustomColor.primaryBackgroundColor,
                controller: _controller.descriptionController,
              ),
              addVerticalSpace(20.h),
              TextLabelsWidget(
                textLabels: Strings.description,
              ),
              DescriptionInputTextFieldWidget(
                hintText: Strings.writeHere,
                maxLine: 4,
                hintTextColor: CustomColor.whiteColor.withOpacity(0.5),
                backgroundColor: CustomColor.primaryBackgroundColor,
                controller: _controller.descriptionController,
              ),
              addVerticalSpace(20.h),
              _attachFileWidget(context),
              addVerticalSpace(20.h),
            ],
          ),
        ));
  }


  _attachFileWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        TextLabelsWidget(
          textLabels: Strings.attachDocument,
        ),
        AttachDocWidget(),
      ],
    );
  }

  _saveChangeWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.submit,
      onPressed: () {
        Get.back();
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }
}
