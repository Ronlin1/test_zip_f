import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:efunding/controller/input_image_controller.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';

// ignore: must_be_immutable
class InputPhotosWidget extends StatelessWidget {
  InputPhotosWidget({Key? key}) : super(key: key);

  final _controller = Get.put(InputImageController());

  File? pickedFile;

  ImagePicker imagePicker = ImagePicker();

  // ignore: prefer_final_fields
  List<XFile>? _imageFileList = [];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context, builder: (context) => _bottomSheet(context));
      },
      child: Container(
          width: double.infinity,
          height: Dimensions.heightSize * 20.h,
          decoration: BoxDecoration(
              color: CustomColor.primaryBackgroundColor,
              borderRadius: BorderRadius.circular(12.r),
              image: DecorationImage(
                image: _controller.isCampaignPicPathSet.value == true
                    ? FileImage(File(_controller.campaignPicPath.value))
                        as ImageProvider
                    : const AssetImage(Strings.campaignImage),
                fit: BoxFit.fill,
              ),
              border: Border.all(
                  color: CustomColor.whiteColor.withOpacity(0.5), width: 1)),
          child: Column(
            mainAxisAlignment: mainCenter,
            children: [
              Icon(
                Icons.image,
                color: CustomColor.whiteColor.withOpacity(0.5),
              ),
              Text(
                "Upload Image",
                style:
                    TextStyle(color: CustomColor.whiteColor.withOpacity(0.5)),
              )
            ],
          )),
    );
  }

  _bottomSheet(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      child: Row(
        mainAxisAlignment: mainCenter,
        children: [
          Padding(
            padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
            child: IconButton(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                  // ignore: avoid_print
                  print('clicked');
                },
                icon: const Icon(
                  Icons.image,
                  color: CustomColor.primaryColor,
                  size: 50,
                )),
          ),
          Padding(
            padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
            child: IconButton(
                onPressed: () {
                  takePhoto(ImageSource.camera);
                  // ignore: avoid_print
                  print('clicked');
                },
                icon: const Icon(
                  Icons.camera,
                  color: CustomColor.primaryColor,
                  size: 50,
                )),
          ),
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedImage =
        await imagePicker.pickImage(source: source, imageQuality: 100);

    pickedFile = File(pickedImage!.path);
    _controller.setCampaignImagePath(pickedFile!.path);
  }

  void selectImages() async {
    // ignore: unnecessary_nullable_for_final_variable_declarations
    final List<XFile>? selectImages = await imagePicker.pickMultiImage();
    if (selectImages!.isEmpty) {
      _imageFileList!.addAll(selectImages);
    }
  }
}
