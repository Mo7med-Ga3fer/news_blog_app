import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../views/login_view.dart';
import 'custom_button.dart';
import 'custom_form_field.dart';
import 'custom_text_button.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  late String email;
  late String password;
  late String name;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const SizedBox(
              height: 65,
            ),
            const Text(
              'Create new',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            const Text(
              'account',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomFormField(
              hintText: 'Name',
              onChanged: (value) {
                name = value;
              },
            ),
            CustomFormField(
              hintText: 'Email Address',
              onChanged: (value) {
                email = value;
              },
            ),
            CustomFormField(
              hintText: 'Password',
              onChanged: (value) {
                password = value;
              },
            ),
            const SizedBox(
              height: 35,
            ),
            CustomButton(
              txt: 'Create Account',
              onTap: () async{
                  isLoading = true;
                  setState(() {
                    
                  });
                  try {
                  final credential =
                      await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: email,
                    password: password,
                  );
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('The password provided is too weak.');
                  } else if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                  }
                } catch (e) {
                  print(e);
                }
                isLoading = false;
                setState(() {
                  
                });
                
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Have an account?",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                CustomTextButton(
                  txt: 'Sign In',
                  onTap: () {
                    Navigator.pushNamed(context, LoginView.id);
                  },
                ),
              ],
            ),
          ]),
        ),
      )),
    );
  }
}
