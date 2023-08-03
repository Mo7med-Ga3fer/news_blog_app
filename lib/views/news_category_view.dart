import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_blog_app/blocs/cubit/get_news_cubit.dart';
import 'package:news_blog_app/constants.dart';
import '../widgets/news_item.dart';

class NewsCategory extends StatefulWidget {
  const NewsCategory({super.key, this.category});
  final String? category;

  @override
  State<NewsCategory> createState() => _NewsCategoryState();
}

class _NewsCategoryState extends State<NewsCategory> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetNewsCubit>(context).getCategoryData(category: widget.category!);
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNewsCubit, GetNewsState>(
      builder: (context, state) {
        if(state is GetNewsLoading){
          return const Center(child: CircularProgressIndicator(color: kPrimaryColor),);
        }
        else if(state is GetNewsSucces){
          return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: state.newsData.length,
                            itemBuilder: (context, index) {
                              return NewsItem(
                                newsModel: state.newsData[index],
                              );
                            }),
                      ),
          ],
        ),
      ),
      );
        }
        else{
          return const Scaffold(body: Center(child: Text('There is an error')),);
        }
      },
    );
  }
}