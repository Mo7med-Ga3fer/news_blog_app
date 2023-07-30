import 'package:flutter/material.dart';
import 'package:news_blog_app/widgets/custom_button.dart';
import 'package:news_blog_app/widgets/my_plan_container.dart';

class MembershipView extends StatelessWidget {
  const MembershipView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Membership', style: TextStyle(
          fontSize: 24,
          color: Colors.black
        ),),
        centerTitle: true,
      ),
      body:  const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 12,),
            Text('Choose your plan', style: TextStyle(
            fontSize: 24,
            color: Colors.black
          ),),
          SizedBox(height: 25,),
          Text('By becoming a member you can read on any device with no ads and offline', style: TextStyle(
            fontSize: 18,
            color: Colors.grey
          ),textAlign: TextAlign.center,),
          SizedBox(height: 20,),
          Row(
            children: [
              ChoosePlan(
                durationTxt: 'Monthly',
                price: '9.99'
                ),
              SizedBox(width: 10,),
              ChoosePlan(
                durationTxt: 'Yearly',
                price: '4.99'
                ),

            ],
          ),
          SizedBox(height: 20,),
          CustomButton(txt: 'Select Plan'),
          ],
        ),
      ),
    );
  }
}

