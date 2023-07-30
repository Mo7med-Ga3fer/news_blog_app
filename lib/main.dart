import 'package:flutter/material.dart';
import 'package:news_blog_app/views/membership_view.dart';



void main() {
  runApp(const NewsBlogApp());
}

class NewsBlogApp extends StatelessWidget {
  const NewsBlogApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MembershipView(),
    );
  }
}

