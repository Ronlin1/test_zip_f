import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/routes/routes.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/views/screens/drawer_screen.dart';
import 'package:efunding/widgets/others/chartflow_dashboard_widget.dart';
import 'package:efunding/widgets/others/slider_dashboard_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      drawer: const DrawerScreen(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: CustomColor.appBarColor,
        iconTheme: const IconThemeData(color: CustomColor.whiteColor),
        title: Image.asset(
          Strings.splashLogo,
          width: 100.w,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(Routes.profileScreen);
              },
              icon: const Icon(
                Icons.person,
                color: CustomColor.whiteColor,
              ))
        ],
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        _headerContainerWidget(context),
        _donationReportWidget(context),
        _withdrawReportWidget(context),
        addVerticalSpace(30.h)
      ],
    );
  }

  _headerContainerWidget(BuildContext context) {
    return SizedBox(
        height: 200.h,
        child: ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const SliderDashboardWidget();
            }));
  }

  _donationReportWidget(BuildContext context) {
    return Column(
      children: [
        _donationReportTitleWidget(context),
        const ChartFlowDashboardWidget(),
      ],
    );
  }

  _donationReportTitleWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
      child: Column(
        children: [
          addVerticalSpace(20.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              Strings.donationReport,
              style: CustomStyler.categoriesStyle,
            ),
          )
        ],
      ),
    );
  }

  _withdrawReportWidget(BuildContext context) {
    return Column(
      children: [
        _withdrawReportTitleWidget(context),
        const ChartFlowDashboardWidget()
      ],
    );
  }

  _withdrawReportTitleWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
      child: Column(
        children: [
          addVerticalSpace(20.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              Strings.withdrawReport,
              style: CustomStyler.categoriesStyle,
            ),
          )
        ],
      ),
    );
  }
}
