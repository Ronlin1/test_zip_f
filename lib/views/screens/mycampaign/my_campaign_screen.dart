import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/my_campaign_controller.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/views/screens/mycampaign/approved_campaign_tab.dart';
import 'package:efunding/views/screens/mycampaign/pending_campaign_tab.dart';
import 'package:efunding/views/screens/mycampaign/rejected_campaign_tab.dart';
import 'package:efunding/views/screens/mycampaign/successful_campaign_tab.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';
import 'package:efunding/widgets/others/tab_widget.dart';

// ignore: must_be_immutable
class MyCampaignScreen extends StatelessWidget {
  MyCampaignScreen({Key? key}) : super(key: key);
  final _controller = Get.put(MyCampaignController());

  List<Tab> allTabs = <Tab>[
    const Tab(
        child: TabWidget(
      title: 'Approved Campaign',
    )),
    const Tab(
        child: TabWidget(
      title: 'Pending Campaign',
    )),
    const Tab(
        child: TabWidget(
      title: 'Rejected Campaign',
    )),
    const Tab(
        child: TabWidget(
      title: 'Successful Campaign',
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.myCampaign,
          style: const TextStyle(color: CustomColor.whiteColor),
        ),
        leading: const BackButtonWidget(),
        backgroundColor: CustomColor.primaryBackgroundColor,
        elevation: 0,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Column(
      children: [
        _tabBarWidget(context),
        _tabViewWidget(context),
      ],
    );
  }

  _tabBarWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize),
      height: 30,
      child: TabBar(
        controller: _controller.tabController,
        isScrollable: true,
        unselectedLabelColor: CustomColor.whiteColor.withOpacity(0.5),
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: CustomColor.appBarColor),
        padding: EdgeInsets.zero,
        indicatorPadding: EdgeInsets.zero,
        labelPadding: const EdgeInsets.symmetric(horizontal: 5),
        tabs: allTabs,
      ),
    );
  }


  _tabViewWidget(BuildContext context) {
    return Expanded(
        child:
            TabBarView(controller: _controller.tabController, children: const [
      ApprovedCampaignTab(),
      PendingCampaignTab(),
      RejectedCampaignTab(),
      SuccessfulCampaignTab(),
    ]));
  }
}
