import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:news_blog_app/models/news_model.dart';
import '../views/content_view.dart';
  
  
class  ImageSlider extends StatefulWidget {
  const ImageSlider({super.key, required this.imageList,});
  final List<NewsModel> imageList;
  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late int currentIndex;
  
  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: ListView(
              children: [
                CarouselSlider.builder(
                  itemCount: widget.imageList.length,
                  itemBuilder: (context, index, pageIndex){
                    
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ContentView(newsModel: widget.imageList[index])));
                      },
                      child: Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: NetworkImage(widget.imageList[index].urlToImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                    );
                  },
                  //Slider Container properties
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      height: 200.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                ),
              ],
            ),
        ),
        const SizedBox(height: 20,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DotsIndicator(
              dotsCount: widget.imageList.length,
              position: currentIndex,
              decorator: const DotsDecorator(
              color: Color.fromARGB(221, 61, 59, 59), // Inactive color
              activeColor: Colors.redAccent,
              size: Size(9, 9)
            ),
            ),
        ),
      ],
    );
  }
}
