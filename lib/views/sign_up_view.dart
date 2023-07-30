import 'package:flutter/material.dart';
import 'package:news_blog_app/widgets/custom_button.dart';

import '../widgets/custom_form_field.dart';
import '../widgets/custom_text_button.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 65,),
            Text('Create new', style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500
            ),),
            Text('account', style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 30,),
            CustomFormField(
              hintText: 'Name',
            ),
            CustomFormField(
              hintText: 'Email Address'
              ),
            CustomFormField(
              hintText: 'Phone Number'
              ),
            CustomFormField(
              hintText: 'Password'
              ),
            SizedBox(height: 35,),
            CustomButton(txt: 'Create Account'),
            SizedBox(height: 10,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Have an account?", style: TextStyle(
                  fontSize: 16,
                ),),
                CustomTextButton(txt: 'Sign In')
              ],
            ),
          ]
          ),
        ),
    );
  }
}