import 'package:flutter/material.dart';
import 'package:snowman/utils/colors.dart';
class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(child: Image.asset("assets/images/background_image.png")),
          Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 6,left: 10),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6,left: 10),
                    child: Text("Settings",style: TextStyle(
                      fontWeight: FontWeight.w700,fontSize: 30,color: textColor
                    ),)
                  )
                ],
              ),
              Row(
                children:  [
                  const Padding(
                    padding: EdgeInsets.only(left: 28,top: 30),
                    child: Icon(Icons.notifications_outlined,size: 24,color: settingScreen,),
                  ),
                  const Padding(
                    padding:  EdgeInsets.only(left: 28,top: 30),
                    child: Text("Push Notification",style: TextStyle(
                      color: settingScreen,fontSize: 16,fontWeight: FontWeight.w400
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 130,top: 30),
                    child: Row(
                      children: [
                        Stack(children:
                        [
                          Image.asset("assets/images/on.png"),
                          Positioned(
                            left: 15,top: 5,
                            child:Image.asset("assets/images/on2.png"), )

                        ]),
                      ],
                    )
                  ),
                ],
              ),
              Row(
                children: [
                   Padding(
                    padding: const EdgeInsets.only(left: 28,top: 40),
                    child: Image.asset("assets/images/notification.png"),
                  ),
                  const Padding(
                    padding:  EdgeInsets.only(left: 30,top: 40),
                    child: Text("Terms of use",style: TextStyle(
                        color: settingScreen,fontSize: 16,fontWeight: FontWeight.w400
                    ),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 170,top: 40),
                    child: Icon(Icons.arrow_back_ios,size: 24,color: settingScreen,)
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 28,top: 40),
                    child:Icon(Icons.privacy_tip_outlined,size: 24,color: settingScreen,)
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 30,top: 40),
                    child: Text("Privacy & Policy",style: TextStyle(
                        color: settingScreen,fontSize: 16,fontWeight: FontWeight.w400
                    ),),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 140,top: 40),
                      child: Icon(Icons.arrow_back_ios,size: 24,color: settingScreen,)
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                      padding: EdgeInsets.only(left: 28,top: 40),
                      child:Icon(Icons.info_outline,size: 24,color: settingScreen,)
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 30,top: 40),
                    child: Text("About Snowman",style: TextStyle(
                        color: settingScreen,fontSize: 16,fontWeight: FontWeight.w400
                    ),),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 138,top: 40),
                      child: Icon(Icons.arrow_back_ios,size: 24,color: settingScreen,)
                  ),
                ],
              ),
              Row(
                children:  [
                  Padding(
                      padding: const EdgeInsets.only(left: 28,top: 40),
                      child:Image.asset("assets/images/Call.png"),
                  ),
                  const Padding(
                    padding:  EdgeInsets.only(left: 30,top: 40),
                    child: Text("Contact Us",style: TextStyle(
                        color: settingScreen,fontSize: 16,fontWeight: FontWeight.w400
                    ),),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 175,top: 40),
                      child: Icon(Icons.arrow_back_ios,size: 24,color: settingScreen,)
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 28,top: 40),
                    child:Icon(Icons.input,size: 24,color: settingScreen,),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 30,top: 40),
                    child: Text("Sign out",style: TextStyle(
                        color: Colors.red,fontSize: 16,fontWeight: FontWeight.w400
                    ),),
                  ),
                ],
              )
            ],
          ),
                ]
        ),
      ),
    );
  }
}
