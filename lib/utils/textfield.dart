 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snowman/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  String hint;
  Widget prefixIcon;
    CustomTextField({Key? key,required this.hint,required this.prefixIcon}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return TextField(
       decoration: InputDecoration(
           hintText: hint,
           hintStyle: const TextStyle(color:textColor,fontSize: 15),
           prefixIcon: prefixIcon,
           border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
         focusColor: bordersColor,
       ),
     );
   }
 }
