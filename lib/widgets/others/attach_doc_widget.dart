import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/strings.dart';

// ignore: must_be_immutable
class AttachDocWidget extends StatelessWidget {
  AttachDocWidget({Key? key}) : super(key: key);

  FilePickerResult? result;
  // ignore: unused_field
  String? _filename;
  PlatformFile? pickedFile;
  // File? fileToDisplay;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        pickFile();
      },
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 60.h,
        // margin:
        // EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
        decoration: BoxDecoration(
            border:
            Border.all(color: CustomColor.whiteColor.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(8.r),
            color: CustomColor.primaryBackgroundColor),
        child: Text(
          Strings.attachDocument,
          style: TextStyle(color: CustomColor.whiteColor.withOpacity(0.5)),
        ),
      ),
    );
  }



  void pickFile() async {
    try{
      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false
      );

      // if(result!=null){
      //   _filename = result!.files.first.name;
      //   pickdFile = result!.files.first;
      //   // fileToDisplay = File(pickdFile!.path.toString());
      // }


    }catch(e){
      // ignore: avoid_print
      print(e);
    }
  }
}
