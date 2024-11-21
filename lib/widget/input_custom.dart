import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputCustom extends StatelessWidget {

  final String title;
  final String? hinttext;
  final Widget? prefixicon;
  final Widget? suffixicon;
  bool? obscureText;
  List<TextInputFormatter>? inputFormatters;

  InputCustom({
    required this.title,
    required this.hinttext,
    this.prefixicon,
    this.suffixicon,
    this.obscureText = false,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 23.0),
      child: Column(
        // agar tulisan enter your phone number kesamping bukan ketengah
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(
              fontSize: 16.00,
              fontWeight: FontWeight.normal
          ),
          ),
          const SizedBox(height: 9,),
          TextField(
            inputFormatters: inputFormatters,
            // tanda tanya 2 itu kaya kalo ada disono di pake kalo ga ada pake yang ini
            obscureText: obscureText ?? false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: const BorderSide(color: Colors.black),
              ),
              prefixIcon: prefixicon,
              hintText: hinttext,
              suffixIcon: suffixicon
            ),
          ),
        ],
      ),
    );
  }
}