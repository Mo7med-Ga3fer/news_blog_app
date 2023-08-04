import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_blog_app/blocs/cubit/get_news_cubit.dart';
import 'package:news_blog_app/views/home_view.dart';
import 'package:news_blog_app/views/login_view.dart';
import 'package:news_blog_app/views/sign_up_view.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const NewsBlogApp());
}

class NewsBlogApp extends StatelessWidget {
  const NewsBlogApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetNewsCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          LoginView.id: (context) => const LoginView(),
          SignUpView.id: (context) => const SignUpView(),
          HomeView.id: (context) => const HomeView(),
        },
        initialRoute: LoginView.id,
      ),
    );
  }
}
