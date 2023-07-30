import 'package:flutter/material.dart';
import 'package:news_blog_app/constants.dart';

class ChoosePlan extends StatelessWidget {
  const ChoosePlan({super.key, required this.durationTxt, required this.price});

  final String durationTxt, price;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey)
        ),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            const Icon(Icons.check_circle_rounded, size: 40, color: kPrimaryColor,),
            const SizedBox(height: 20,),
            Text(durationTxt, style: const TextStyle(
              fontSize: 24
            ),),
            const SizedBox(height: 10,),
            Text(price, style: const TextStyle(
              fontSize: 24
            ),),
            const SizedBox(height: 20,),
            const Text('Renewed every mounth', style: TextStyle(
              fontSize: 18,
              color: Colors.grey
            ),
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25,)
          ],
        ),
    
      ),
    );
  }
}