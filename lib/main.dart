import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_blog_app/views/home_view.dart';
import 'package:news_blog_app/views/login_view.dart';
import 'package:news_blog_app/views/sign_up_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const NewsBlogApp());
}

class NewsBlogApp extends StatelessWidget {
  const NewsBlogApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginView.id: (context) => const LoginView(),
        SignUpView.id: (context) => const SignUpView(),
        HomeView.id: (context) => const HomeView()
      },
      initialRoute: LoginView.id,
    );
  }
}

