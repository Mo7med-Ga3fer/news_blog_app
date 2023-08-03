import 'package:flutter/material.dart';
import 'package:news_blog_app/models/news_model.dart';

class ContentView extends StatelessWidget {
  const ContentView({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                backgroundColor: Colors.white,
                title: const Text(
                  'NewsBlog',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                centerTitle: true,
    ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(newsModel.urlToImage, fit: BoxFit.cover,),
        ),
        const SizedBox(height: 20,),
        Text(newsModel.title, style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),),
        const SizedBox(height: 15,),
        Text(newsModel.content, style: const TextStyle(
          fontSize: 18,
        ),)
      ],
    ),
  );
  }
}