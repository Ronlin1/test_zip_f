import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:efunding/controller/payment_method_slider_controller.dart';

// ignore: must_be_immutable
class PaymentMethodSliderWidget extends StatelessWidget {
  PaymentMethodSliderWidget({Key? key}) : super(key: key);
  final _controller = Get.put(PaymentMethodSliderController());

  final imgList = [
    "assets/images/others/payoneer-card.png",
    "assets/images/others/paypal-card.png",
    "assets/images/others/skrill-card.png",
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map(
          (item) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  // Get.toNamed(Routes.courseScreen);
                },
                child: Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(15.r),
                  // color: CustomColor.primaryColor,
                  child: SizedBox(
                    width: 300.w,
                    height: 100.h,
                    child: Image.asset(item, fit: BoxFit.fill,),
                  ),
                ),
              )),
        )
        .toList();

    return Center(
      child: CarouselSlider(
        items: imageSliders,
        options: CarouselOptions(
          // height: 250.0,
            autoPlay: false,
            enlargeCenterPage: true,
            pageSnapping: false,
            enableInfiniteScroll: false,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            // autoPlayAnimationDuration: const Duration(milliseconds: 1000),
            // viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              _controller.onPageChange(index);
            }),
      ),
    );
  }
}
