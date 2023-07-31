import 'package:flutter/material.dart';
import 'package:news_blog_app/constants.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

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
              const SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sports', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: kPrimaryColor
                    ),),
                    Text('CNN: The Goat won the world cup', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    ),
                    SizedBox(height: 10,),
                    Text('20 jan 2021', style: TextStyle(
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
                          image: const DecorationImage(
                            image: NetworkImage("https://c4.wallpaperflare.com/wallpaper/1001/743/752/argentina-fifa-world-cup-lionel-messi-hd-wallpaper-preview.jpg"),
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