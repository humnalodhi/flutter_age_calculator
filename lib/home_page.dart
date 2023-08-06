import 'package:flutter/material.dart';
import 'package:flutter_getx_age_calculator/user_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final UserController _userController = Get.put(UserController());

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Age Calculator',
      home: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          title: const Text('Age Calculator'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              btn(),
              const SizedBox(height: 20),
              Obx(
                () => Text('Age: ${_userController.userModel.value.getAge()}',),
              ),
              Obx(
                () => Text(
                    'Total Months: ${_userController.userModel.value.getTotalMonths()}'),
              ),
              Obx(
                () => Text(
                    'Total Days: ${_userController.userModel.value.getTotalDays()}'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget btn(){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
      onPressed: () {
       _userController.selectDateBtn();
      },
      child: const Text('Select Date of Birth'),
    );
  }
}
