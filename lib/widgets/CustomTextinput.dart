import '../const/colors.dart';
import 'package:flutter/material.dart';

class CustomInputText extends StatelessWidget {
  const CustomInputText({
    required String hintText,
    Key? key,
  }) : _hintText = hintText,super(key: key);

  final String _hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height: 50,
      decoration: ShapeDecoration(
        shape: StadiumBorder(), 
        color: AppColor.green2
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: _hintText,
          hintStyle: TextStyle(
            color: AppColor.placeholder,
          ),
          contentPadding: const EdgeInsets.only(left:40)
        ),
      ),
    );
  }
}