import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.txt, this.onTap});

  final String txt;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(txt, style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: kPrimaryColor),
              textAlign: TextAlign.end,),
      );
  }
}