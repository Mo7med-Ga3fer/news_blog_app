import 'package:flutter/material.dart';
import 'package:news_blog_app/constants.dart';
import 'package:news_blog_app/views/drawer_view.dart';
import 'package:news_blog_app/widgets/custom_text_button.dart';
import 'package:news_blog_app/widgets/image_carousel.dart';
import 'package:news_blog_app/widgets/news_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: const DrawerView(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: kPrimaryColor),
          title: const Text('NewsBlog', style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),),
          centerTitle: true,
          bottom: const TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 3, color: kPrimaryColor)
            ),
            tabs: [
              Tab(icon: Text('All News', style: TextStyle(
                color: Colors.grey,
                fontSize: 11,
                fontWeight: FontWeight.w700
              ),),),
              Tab(icon: Text('Tech', style: TextStyle(
                color: Colors.grey,
                fontSize: 11,
                fontWeight: FontWeight.w700
              ),),),
              Tab(icon: Text('Fashion', style: TextStyle(
                color: Colors.grey,
                fontSize: 11,
                fontWeight: FontWeight.w700
              ),),),
              Tab(icon: Text('Sports', style: TextStyle(
                color: Colors.grey,
                fontSize: 11,
                fontWeight: FontWeight.w700
              ),),),
              Tab(icon: Text('Science', style: TextStyle(
                color: Colors.grey,
                fontSize: 11,
                fontWeight: FontWeight.w700
              ),),),
            ]
          ),
        ),
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              ImageSlider(),
              SizedBox(height: 15,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Latest News', style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700
                  ),),
                  CustomTextButton(txt: 'Show More')
                ],
              ),
              SizedBox(height: 20,),
              Expanded(
                
                child: ListView.builder(
                  itemBuilder: (context, index){
                    return const NewsItem();
                  }
                  ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}