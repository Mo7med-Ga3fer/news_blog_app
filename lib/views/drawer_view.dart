import 'package:flutter/material.dart';
import 'package:news_blog_app/constants.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage('https://c4.wallpaperflare.com/wallpaper/1001/743/752/argentina-fifa-world-cup-lionel-messi-hd-wallpaper-preview.jpg'),
                  //child: ,
                ),
                SizedBox(width: 10,),
                Text('Lionel Messi', style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: kPrimaryColor,
                ),)
              ],
            ),
          ),
    ]));
  }
}