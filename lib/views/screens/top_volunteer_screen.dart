import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/top_voluntree_controller.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';
import 'package:efunding/widgets/inputs/search_input_text_field_widget.dart';
import 'package:efunding/widgets/others/top_volunteer_screen_widget.dart';

class TopVolunteerScreen extends StatelessWidget {
  TopVolunteerScreen({Key? key}) : super(key: key);
  final _controller = Get.put(TopVolunteerController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.primaryBackgroundColor,
        appBar: AppBar(
          title: Text(
            Strings.topVolunteer,
            style: const TextStyle(color: CustomColor.whiteColor),
          ),
          leading: const BackButtonWidget(),
          backgroundColor: CustomColor.appBarColor,
          elevation: 0,
        ),
        body: _bodyWidget(context));
  }


  _bodyWidget(BuildContext context){
    return ListView(
      // shrinkWrap: false,
      children: [
        addVerticalSpace(10.h),
        _searchTextFieldWidget(context),
        addVerticalSpace(10.h),
        _listOfWidget(context)
      ],
    );
  }


  _searchTextFieldWidget(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
      child: SearchInputTextFieldWidget(
          controller: _controller.searchController,
          hintText: Strings.searchVolunteer,
          backgroundColor: CustomColor.primaryBackgroundColor,
          hintTextColor: CustomColor.textColor),
    );
  }


  _listOfWidget(BuildContext context){
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return TopVolunteerScreenWidget(
            image: Strings.donationKiosksImage,
            title: Strings.donationKiosks,
            subTitle: Strings.americanFounding,
            onPressed: () {
              Get.toNamed(Routes.topVolunteerUserScreen);
            },
          );
        });
  }
}
