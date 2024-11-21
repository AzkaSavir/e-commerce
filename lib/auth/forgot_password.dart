import 'package:authtentication_flutter/auth/verify_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../icons/icons.dart';
import '../widget/button_custom.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 38.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        title: const Text(
          'Forgot',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 77.0, right: 38, left: 38),
          child: Column(
            children: [
              SvgPicture.string(forgotImage),
              const SizedBox(height: 72,),
              const Text(
                'Forgot Password?',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                ),),
              const SizedBox(height: 12,),
              const Text(
                textAlign: TextAlign.center,
                'Don\'t worry! it happens. Please enter phone\n number associated with your account',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff696969),
                ),
              ),
              const SizedBox(height: 41,),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter your phone number',
                  style: TextStyle(fontSize: 16.43, fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: const BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: const BorderSide(color: Colors.grey)),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('+62'),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  ),
                  hintText: '8658855388',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  suffixIcon: const Icon(
                    Icons.check_circle,
                    size: 18,
                  ),
                ),
              ),
              const SizedBox(height: 23,),


               ButtonCustom(
                title: 'Get OTP',
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VerifyPage(),),);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}