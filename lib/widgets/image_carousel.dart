import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
  
  
class  ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

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
                  itemCount: 15,
                  itemBuilder: (context, index, pageIndex){
                    return Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: const DecorationImage(
                            image: NetworkImage("https://c4.wallpaperflare.com/wallpaper/1001/743/752/argentina-fifa-world-cup-lionel-messi-hd-wallpaper-preview.jpg"),
                            fit: BoxFit.cover,
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
        DotsIndicator(
            dotsCount: 4,
            position: 0,
            decorator: DotsDecorator(
            color: const Color.fromARGB(221, 61, 59, 59), // Inactive color
            activeColor: Colors.redAccent,
          ),
          ),
      ],
    );
  }
}
