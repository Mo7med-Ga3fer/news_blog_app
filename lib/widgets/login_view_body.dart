import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:news_blog_app/models/news_model.dart';
import 'package:news_blog_app/services/get_news_service.dart';
import '../views/sign_up_view.dart';
import 'custom_button.dart';
import 'custom_form_field.dart';
import 'custom_small_button.dart';
import 'custom_text_button.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool isLoading = false;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
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
                CustomTextButton(
                  txt: 'Forget Password?',
                  onTap: ()async{
                    List<NewsModel> test =await  GetNewsService().GetNewsData();
                    print(test[1].title);
                  },
                ),
                CustomButton(
                  txt: 'Sign In',
                  onTap: () async{
                  isLoading = true;
                  setState(() {
                    
                  });
                  try {
                  final credential =
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
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
      ),
    );
  }
}