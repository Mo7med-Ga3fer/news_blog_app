import 'package:flutter/material.dart';
import 'package:news_blog_app/views/news_category_view.dart';
import 'package:news_blog_app/widgets/all_news_view_body.dart';
import '../constants.dart';
import '../views/drawer_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: const DrawerView(),
              appBar: AppBar(
                backgroundColor: Colors.white,
                iconTheme: const IconThemeData(color: kPrimaryColor),
                title: const Text(
                  'NewsBlog',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                centerTitle: true,
                bottom: const TabBar(
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(width: 3, color: kPrimaryColor)),
                    tabs: [
                      Tab(
                        icon: Text(
                          'All News',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.w700),
                        ),
                        
                      ),
                      Tab(
                        icon: Text(
                          'Tech',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Tab(
                        icon: Text(
                          'Business',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Tab(
                        icon: Text(
                          'Sports',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Tab(
                        icon: Text(
                          'Science',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
              ),
              body: const TabBarView(
            children: [
              AllNewsViewBody(),
              NewsCategory(category: 'technology',),
              NewsCategory(category: 'business',),
              NewsCategory(category: 'sports',),
              NewsCategory(category: 'science',),
            ],
          ),
      )
      );
  }
}