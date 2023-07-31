import 'package:flutter/material.dart';
import '../views/sign_up_view.dart';
import 'custom_button.dart';
import 'custom_form_field.dart';
import 'custom_small_button.dart';
import 'custom_text_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 65,
              ),
              const Text(
                'Welcome to',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              const Text(
                'News Blog',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomFormField(
                hintText: 'Email Address',
              ),
              const CustomFormField(hintText: 'Password'),
              const CustomTextButton(
                txt: 'Forget Password?',
              ),
              const CustomButton(
                txt: 'Sign In',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  CustomTextButton(
                    txt: 'Sign Up',
                    onTap: () {
                      Navigator.pushNamed(context, SignUpView.id);
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 1,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                  )),
                  const Text(
                    "Or Sign in with",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  CustomSmallButton(
                      color: Color(0xff3B5998),
                      img: 'assets/facebook.png',
                      txt: 'Facebook',
                      borderColor: Color(0xff3B5998),
                      txtColor: Colors.white),
                  SizedBox(
                    width: 10,
                  ),
                  CustomSmallButton(
                      color: Colors.white,
                      img: 'assets/google.png',
                      txt: 'Google',
                      borderColor: Colors.black,
                      txtColor: Colors.black),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}