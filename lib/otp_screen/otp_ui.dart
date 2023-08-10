import 'package:flutter/material.dart';
import 'package:snowman/utils/colors.dart';
import 'package:snowman/utils/style.dart';

import '../home_screen/home_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset("assets/images/image 4.png"),
            Padding(
              padding: const EdgeInsets.only(left: 102,top: 219),
              child: Image.asset("assets/images/image 2.png"),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 19,top: 350),
                  child: Text("Hi, Welcome!",style: welcomeText,),
                ),
                const Padding(
                  padding: EdgeInsets.only(top:44,left: 40),
                  child: Text("Phone number",style: outfit5,),
                ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12,right: 12,top: 10),
                    child: TextField(
                    decoration: InputDecoration(
                    hintText: "Your Phone Number",
                    hintStyle: textColors,
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusColor: bordersColor,
                    ),
                    ),
                  ),
                const SizedBox(height: 40,),
                Center(
                  child: InkWell(
                    onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                    },
                    child: Container(
                      height: 56,
                      width: 171,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          border: Border.all(color: signinColor,width: 3)
                    ),
                    child: const Center(child: Text("Signin",style: boxText,)),
                    ),
                  ),
                ),
                   Image.asset("assets/images/image 3.png"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
