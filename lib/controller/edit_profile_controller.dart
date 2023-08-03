import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController{
  final formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final cityController = TextEditingController();
  final countryController = TextEditingController();
  final streetController = TextEditingController();
  final zipController = TextEditingController();// final messageController = TextEditingController();
}