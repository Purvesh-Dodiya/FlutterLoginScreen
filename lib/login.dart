import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginView extends StatelessWidget {

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 55,
              ),
              Center(
                  child: Image.asset(
                "assets/login_icon.png",
                width: 54,
                height: 64,
              )),
              const Padding(
                  padding: EdgeInsets.only(top: 38),
                  child: Text(
                    "Log in",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 33,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIconConstraints:
                      const BoxConstraints(minHeight: 24, minWidth: 24),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SvgPicture.asset("assets/email_icon.svg"),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Email",
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(style: BorderStyle.none, width: 0)),
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 14,
              ),

              TextField(
                decoration: InputDecoration(
                  prefixIconConstraints:
                      const BoxConstraints(minHeight: 24, minWidth: 24),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SvgPicture.asset("assets/lock_icon.svg"),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Password",
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(style: BorderStyle.none, width: 0)),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              const SizedBox(
                height: 14,
              ),
              const Align(
                  alignment: Alignment.centerRight,
                  child: Text("Forgot password?")),
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 85.0),
                  child: FilledButton(
                    onPressed: () {
                      showMessage(context, "Login successful");
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Color(0xffF67952))),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              RichText(
                text: TextSpan(style: const TextStyle(color: Colors.grey), children: [
                  const TextSpan(
                      text: "Don't have account? ",
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                  TextSpan(
                    text: "Sign Up",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        showMessage(context, "Signup clicked");
                      },
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

