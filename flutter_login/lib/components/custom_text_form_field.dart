import 'package:flutter/material.dart';
import 'package:flutter_login/size.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(text),
      SizedBox(height: small_gap,),
      TextFormField(
        // ! null이 절대 아니라고 컴파일러에게 알려준 것.
        validator: (value) => value!.isEmpty ? "Please enter some Text" : null,
        obscureText: text == "Password" ? true : false, // 해당 TextFormField가 Password이면 *** 처리해주는 능력
        decoration: InputDecoration(
          hintText: "Enter $text", 
          enabledBorder: OutlineInputBorder(
            // OUtlineInputBorder는 기본 TextFormField의 디자인이다.
            borderRadius: BorderRadius.circular(20),
        ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          // 에러가 발생 후 손가락을 터치했을 때 디자인.
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          ),
        ),
      )
    ]);
  }
}
