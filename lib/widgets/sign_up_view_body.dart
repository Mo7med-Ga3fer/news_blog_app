import 'package:flutter/material.dart';
import '../views/login_view.dart';
import 'custom_button.dart';
import 'custom_form_field.dart';
import 'custom_text_button.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 65,),
              const Text('Create new', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500
              ),),
              const Text('account', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500
              ),),
              const SizedBox(height: 30,),
              const CustomFormField(
                hintText: 'Name',
              ),
              const CustomFormField(
                hintText: 'Email Address'
                ),
              const CustomFormField(
                hintText: 'Password'
                ),
              const SizedBox(height: 35,),
              const CustomButton(txt: 'Create Account'),
              const SizedBox(height: 10,),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Have an account?", style: TextStyle(
                    fontSize: 16,
                  ),),
                  CustomTextButton(
                    txt: 'Sign In',
                    onTap: (){
                      Navigator.pushNamed(context, LoginView.id);
                    },
                    ),
                ],
              ),
            ]
            ),
        ),
        ));
  }
}