import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {

  const ButtonCustom({
    super.key,
    // required itu biar wajib di isi
    required this.title,
    required this.onPressed,
  });

  final String title;
  // voidcall back itu kaya onpress oback itu tipenya make videovcallback
  // buat function
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
        child: Text(
          title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}