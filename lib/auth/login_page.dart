
import 'package:authtentication_flutter/auth/register_page.dart';
import 'package:authtentication_flutter/features/home/home.dart';
import 'package:authtentication_flutter/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../icons/icons.dart';
import '../widget/button_custom.dart';
import 'forgot_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Login',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 174.0, right: 38, left: 38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter your phone number',
              style: TextStyle(fontSize: 16.43, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: const BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: const BorderSide(color: Colors.grey)),
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
            const SizedBox(
              height: 19,
            ),
            const Text(
              'Enter your password',
              style: TextStyle(fontSize: 16.43, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: isObscure,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(color: Colors.grey)),
                  hintText: '************',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: Icon(
                      isObscure ? Icons.visibility_off : Icons.visibility,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                style: TextButton.styleFrom(
                  splashFactory: NoSplash.splashFactory,
                ),
                onPressed: () {
                  // navigator buat pindah halaman
                  // push buat pergi ke halaman berikutnya
                  // sedangkan pop buat kembali ke halaman yg sebelumnya
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgotPasswordPage(),
                    ),
                  );
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ),
            ),

            // contoh klik kanan refactor extract flutter widget
            // trus bakal di buatin classnya di bawah dan di pindahin ke folder.dart baru
            ButtonCustom(title: 'Login', onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainPage(),
                ),
              );
            }
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      splashFactory: NoSplash.splashFactory),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(bottom: 13),
                child: Text(
                  'or',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff696969),
                  ),
                ),
              ),
            ),
            const CustomOutlineButton(),
            const SizedBox(
              height: 18,
            ),
            const CustomOutlineButton2(),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 18, bottom: 14),
                child: Text(
                  'or',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff696969),
                  ),
                ),
              ),
            ),
            Align(
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  'Continue as Guest',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff9D9D9D),
                      decoration: TextDecoration.underline),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomOutlineButton2 extends StatelessWidget {
  const CustomOutlineButton2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17))),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.string(apple),
          const SizedBox(width: 5),
          const Text('Continue With Apple')
        ],
      ),
    );
  }
}

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17))),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.string(google),
          const SizedBox(width: 5),
          const Text('Login with Google'),
        ],
      ),
    );
  }
}
