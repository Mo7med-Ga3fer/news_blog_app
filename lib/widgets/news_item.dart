import 'package:flutter/material.dart';
import 'package:news_blog_app/constants.dart';
import 'package:news_blog_app/models/news_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(newsModel.author, style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: kPrimaryColor
                    ),),
                    Text(newsModel.title, style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    ),
                    SizedBox(height: 10,),
                    Text(newsModel.publishedAt, style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
              Container(
                        height: 100,
                        width: 100,
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: NetworkImage(newsModel.urlToImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
            ],
          ),
          SizedBox(height: 5,),
          Divider(height: 10,),
        ],
      ),
    );
  }
}