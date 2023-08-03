import 'package:flutter/material.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/strings.dart';
import 'package:efunding/widgets/buttons/back_button_widget.dart';
import 'package:efunding/widgets/others/my_tickets_widget.dart';

class MyTicketScreen extends StatelessWidget {
  const MyTicketScreen({Key? key}) : super(key: key);
  // final _controller = Get.put(MyTicketController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.myTickets,
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
        _myTicketWidget(context),
      ],
    );
  }

  _myTicketWidget(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return MyTicketsWidget(
            title: Strings.myTicketTransaction,
            ticketIssue: Strings.hereIsTicketIssues,
            time: Strings.date,
            type: Strings.solved,
          );
        });
  }
}
