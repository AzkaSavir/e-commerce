import 'package:flutter/material.dart';

import '../../../../preferences/colors.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: AppColor.primaryBackground,
          title: const Text('Message Support', style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600
          ),),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/headseticon.png'),
              SizedBox(height: 28),
              const Text('Opss no message yet?', style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),),
              const SizedBox(height: 12,),
              const Text('You have never done a transaction', style: TextStyle(
                  color: AppColor.greyText,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),),
              const SizedBox(height: 24,),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 18,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.primaryColor
                ),
                child: const Text('Explore Store', style: TextStyle(
                    color: AppColor.whiteText,
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                ),),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
