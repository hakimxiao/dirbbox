import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background
          SizedBox(
            width: Get.width,
            child: Image.asset("assets/images/bg.png", fit: BoxFit.cover),
          ),
          // layer body
          Column(
            children: [
              SizedBox(height: 135),
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset(
                  "assets/images/pic-1.png",
                  fit: BoxFit.contain,
                ),
              ),
              Text("Welcome To"),
              Text("Dirbbox"),
              SizedBox(
                width: 250,
                child: Text(
                  "Best cloud storage platform for all business and individuals to manage there data\n\n Join For Free.",
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF567DF4).withOpacity(0.4),
                    ),
                    child: Row(
                      children: [Image.asset("assets/icons/finger.png")],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
