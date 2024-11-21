import 'dart:ui';


import 'package:authtentication_flutter/widget/button_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../icons/icons.dart';
import '../widget/input_custom.dart';
import 'login_page.dart';

// untuk mengaktifkan setstate harus ganti statelesswidget ke statefulwidget
// gunannya statefulwidget adalah agar bisa di ubah ubah nilainya
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  bool isObscure = true;

  bool isObscure2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, right: 38, left: 38),
        child: Column(
          children: [
            InputCustom(
              title: 'Enter your phone number',
              hinttext: '089617285972',
              prefixicon: const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(mainAxisSize: MainAxisSize.min, children: [Text('+62'), SizedBox(width: 5,), Icon(Icons.keyboard_arrow_down),],),),
              suffixicon: const Icon(Icons.check_circle, size: 18,),
            ),
            InputCustom(
                title: 'Enter your email',
                hinttext: ' youremail@gmail.com'),
            InputCustom(
              obscureText: isObscure,
              title: 'Enter your password',
              hinttext: ' *************',
              suffixicon: IconButton(
                onPressed: () {
                  setState(() {
                    // tanda seru berarti harus ada / tidak kosong (non-null)
                    isObscure = !isObscure;
                  });
                },
                // ternary adalah if else tapi 1 baris
                icon: Icon(isObscure ? Icons.visibility_off : Icons.visibility,
                  size: 18,
                  color: Colors.grey,
                ),
              ),
            ),
            InputCustom(
              obscureText: isObscure2,
              title: 'Re-enter your password',
              hinttext: ' *************',
              suffixicon: IconButton(
                onPressed: () {
                  setState(() {
                    // tanda seru berarti harus ada / tidak kosong (non-null)
                    isObscure2 = !isObscure2;
                  });
                },
                // ternary adalah if else tapi 1 baris
                icon: Icon(
                  isObscure ? Icons.visibility_off : Icons.visibility,
                  size: 18,
                  color: Colors.grey,
                ),
              ),
            ),
          SizedBox(height: 13,),
          ButtonCustom(
            title: 'Get OTP',
            onPressed: (){},
          ),
            SizedBox(height: 13,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already Have an account?'),
                TextButton(
                    onPressed: (){},
                    child: const Text('Sign In'),
                ),
              ],
            ),
            const Align(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text('or'),
              ),
            ),
            SizedBox(height: 13,),
            CustomOutlineButton(),
            SizedBox(height: 25,),
            CustomOutlineButton2(),
          ],
        ),
      ),
    );
  }
}
