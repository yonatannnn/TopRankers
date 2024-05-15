import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ranker/widgets/text_field.dart';
import '../utils/animations.dart';
import '../widgets/text_field.dart';
import '../data/bg_data.dart';
import '../utils/text_utils.dart';
import '../auth/auth.dart';

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({super.key});
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  @override
  State<RegistrationScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegistrationScreen> {
  int selectedIndex = 0;
  bool showOption = false;
  void signup(BuildContext context) async {
    final authService = AuthService();

    if (widget._passwordController.text ==
        widget._confirmPasswordController.text) {
      try {
        await authService.signUnWithEmainAndPassword(
            widget._emailController.text, widget._passwordController.text);
        print('User Signed Up');
        Navigator.pop(context);
      } catch (e) {
        print(e);
      }
    } else {
      print('Passwords do not match!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(bgList[3]), fit: BoxFit.fill),
        ),
        alignment: Alignment.center,
        child: Container(
          height: 400,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
            color: Colors.black.withOpacity(0.1),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Center(
                          child: TextUtil(
                        text: "Sign Up",
                        weight: true,
                        size: 30,
                      )),
                      const Spacer(),
                      CustomTextField(
                          hintText: "Email",
                          controller: widget._emailController),
                      const Spacer(),
                      CustomTextField(
                          hintText: "Password",
                          controller: widget._passwordController),
                      const Spacer(),
                      CustomTextField(
                          hintText: "Confirm Password",
                          controller: widget._confirmPasswordController),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          signup(context);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          backgroundColor: Colors.white,
                        ),
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                                color: Color.fromARGB(255, 183, 0, 0)),
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Spacer(),
                      Container(
                        height: 15,
                        width: double.maxFinite,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(0.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: Text(
                              "Back to Login",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 249, 249, 249)),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
