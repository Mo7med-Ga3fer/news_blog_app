import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_blog_app/blocs/cubit/get_news_cubit.dart';
import '../constants.dart';
import 'custom_text_button.dart';
import 'image_carousel.dart';
import 'news_item.dart';

class AllNewsViewBody extends StatefulWidget {
  const AllNewsViewBody({super.key});

  @override
  State<AllNewsViewBody> createState() => _AllNewsViewBodyState();
}

class _AllNewsViewBodyState extends State<AllNewsViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetNewsCubit>(context).gatData();
  }

  Widget build(BuildContext context) {
    return BlocBuilder<GetNewsCubit, GetNewsState>(
      builder: (context, state) {
        if (state is GetNewsLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: kPrimaryColor,
            ),
          );
        } else if (state is GetNewsSucces) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  ImageSlider(
                    imageList: state.newsData,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Latest News :',
                    style: TextStyle(
                        fontSize: 25, 
                        fontWeight: FontWeight.w700,
                        ),
                  ),
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
        } else {
          return const Scaffold(body: Center(child: Text('There is an error')));
        }
      },
    );
  }
}
