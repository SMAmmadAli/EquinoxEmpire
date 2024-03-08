import 'package:equinoxempire2/controller/signup/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});

  final SignupController signupController = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                // signInWithGoogle();
                signupController.signInWithGoogle();
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                ),
                child: const Center(
                    child: Text(
                  "Sign Up with Google",
                  style: TextStyle(fontSize: 20),
                )),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              signupController.signInWithFacebook();
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 60,
              decoration: const BoxDecoration(color: Colors.amber),
              child: const Center(
                  child: Text(
                "Sign Up with Facebook",
                style: TextStyle(fontSize: 20),
              )),
            ),
          )
        ],
      ),
    ));
  }
}
