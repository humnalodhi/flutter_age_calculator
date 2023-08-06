import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'user_model.dart';

class UserController extends GetxController {
  var userModel = UserModel().obs;

  void updateDateOfBirth(DateTime newDateOfBirth) {
    userModel.update((user) {
      user?.dateOfBirth = newDateOfBirth;
    });
  }

  selectDateBtn() async{
    DateTime? picked = await showDatePicker(
      context: Get.context!,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2050),
    );

    if (picked != null) {
      updateDateOfBirth(picked);
    } else {
      updateDateOfBirth(DateTime.now());
    }
  }
}
