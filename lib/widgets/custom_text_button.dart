import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.txt});

  final String txt;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Text(txt, style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: kPrimaryColor),
              textAlign: TextAlign.end,),
      );
  }
}