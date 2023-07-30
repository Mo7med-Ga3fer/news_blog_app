import 'package:flutter/material.dart';

class CustomSmallButton extends StatelessWidget {
  const CustomSmallButton({super.key, required this.color, required this.img, required this.txt, required this.borderColor, required this.txtColor,});
  
  
  
  final String txt, img;
  final Color color, borderColor, txtColor;
  

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: borderColor) 
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(img, height: 35,),
              const SizedBox(width: 5,),
              Text(txt, style: TextStyle(
                color: txtColor,
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),)
            ],
          ),
        ),
      ),
    );
  }
}