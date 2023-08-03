import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_blog_app/blocs/cubit/get_news_cubit.dart';
import '../constants.dart';
import '../views/drawer_view.dart';
import 'custom_text_button.dart';
import 'image_carousel.dart';
import 'news_item.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});
  
  @override
  
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<GetNewsCubit>(context).gatData();
  }
  Widget build(BuildContext context) {
    return BlocBuilder<GetNewsCubit, GetNewsState>(
      builder: (context, state) {
        if(state is GetNewsLoading){
          return const Center(child: CircularProgressIndicator(color: kPrimaryColor,),);
        }
        else if(state is GetNewsSucces){
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
                      borderSide:
                          BorderSide(width: 3, color: kPrimaryColor)),
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
                        'Fashion',
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
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  ImageSlider(imageList: state.newsData,),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Latest News',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      CustomTextButton(txt: 'Show More',)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.newsData.length,
                      itemBuilder: (context, index) {
                      return NewsItem(newsModel: state.newsData[index],);
                    }),
                  ),
                ],
              ),
            ),
          ),
        );
        }
        else{
          return const Scaffold(body: Center(child: Text('There is an error')));
        }
      },
    );
  }
}
/**/