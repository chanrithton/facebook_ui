// ignore_for_file: file_names, sized_box_for_whitespace, deprecated_member_use, avoid_unnecessary_containers

import 'package:facebook/Screens/Home_Screen.dart';
import 'package:facebook/Screens/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KeyPrimaryLightColor,
      body: Container(
        // decoration: const BoxDecoration(
        //   gradient: KeyPrimaryGradientColor,
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              'images/facebook.png',
              width: 80,
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Phone number or email",
                        prefixIcon: const Icon(Icons.email),
                        // add border color
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: KeySecondaryColor, width: 2),
                            borderRadius: BorderRadius.circular(14)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: KeySecondaryColor)),
                        // input color in Box
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: const Icon(Icons.lock),
                        // add border color
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: KeySecondaryColor, width: 2),
                            borderRadius: BorderRadius.circular(14)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: KeySecondaryColor)),
                        // input color in Box
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  // add button
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: KeyPrimaryColor,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                            (route) => false);
                        // Get.to(() => const HomeScreen());
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 15, color: KeyBackColor),
                    ),
                  ),
                  //   const Spacer(),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: KeyPrimaryLightColor,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {},
                  child: const Text(
                    "Create new account?",
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
              ),
            ),
            Image.asset(
              'images/photo/meta.png',
              width: 80,
              height: 80,
              color: KeyBackColor,
            ),
          ],
        ),
      ),
    );
  }
}
