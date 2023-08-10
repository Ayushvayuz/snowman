import 'package:flutter/material.dart';
import 'package:snowman/utils/colors.dart';

class SampleTextfield extends StatelessWidget {
  String hint;
  SampleTextfield({Key? key,required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color:Colors.black26,fontSize: 15),
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        focusColor: bordersColor,
      ),
    );
  }
}
