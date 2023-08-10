import 'package:flutter/material.dart';
import 'package:news_blog_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.txt, this.onTap});
  
  final String txt;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Text(txt, style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white
          ),),
        ),
      ),
    );
  }
}