import 'package:flutter/material.dart';
import 'package:snowman/home_screen/setting_screen.dart';
import 'package:snowman/visitor_listing/sample_textfield.dart';

import '../utils/colors.dart';
import '../utils/style.dart';
import '../utils/textfield.dart';
import '../vehicle_listing/vehicle_listing_screen.dart';
import '../visitor_listing/visitor_listing.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget containerImage( Color color , Color backgroundColor , String image,
      String text ,String value , String cardText
      ){
    return Container(
      height: 184,
      // width: 169.77,
      width: MediaQuery.of(context).size.width/2.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 25),
            child: CircleAvatar(
              backgroundColor:backgroundColor,radius: 20.1,
              child: Image.asset(image),
            ),
          ),
         const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(text,style: outfitbolds,),
          ),
          const SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(value,style: outfit5,),
          ),
          const SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(cardText,style: blueTexts,),
          ),
        ],
      ),
    );
  }
  Widget box(String text){
    return Padding(
      padding: const EdgeInsets.only(left: 19 , right: 19),
      child: Container(
        height: 56,
        width: 353,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          border: Border.all(color: borderColor)
        ),
        child: Center(
          child: Text(text,style:boxText,),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        drawer: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Drawer(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(20)),
            ),
            child: ListView(
              children: [
                const SizedBox(height: 10,),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/Avatar.png"),
                      ),
                      const SizedBox(width: 15,),
                      Column(
                        children: const [
                          Text("EDIT PROFILE",style: drawerStyle,),
                          SizedBox(height: 2,),
                          Text("Animesh Singh",style: boxText,),
                        ],
                      )
                    ],
                  ),
                const SizedBox(height: 10,),
                const ListTile(
                  title: Text(' MAIN',style: drawerText),
                ),
                ListTile(
                  leading: Image.asset("assets/images/Union.png"),
                  title: const Text(' Vehicle Listing ',style: drawerText,),
                ),
                ListTile(
                  leading: Image.asset("assets/images/user.png"),
                  title: const Text(' FAQs ',style: drawerText),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Image.asset("assets/images/notification.png"),
                  title: const Text(' Notification ',style: drawerText),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text(' Settings ',style: drawerText),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SettingScreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.help_outline_outlined),
                  title: const Text('Help',style: drawerText),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Emergency Contact',style: drawerText),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 60),
              child: Image.asset("assets/images/background_image.png"),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                   const InkWell(
                    child: Padding(
                      padding: EdgeInsets.only(left:18, top:65),
                      child: Icon(Icons.menu,size: 28,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 59,left: 15),
                        child: Text("Dashboard",style: outfitBold.copyWith(
                            fontSize: 30,
                            color: const Color(0xff000000)),
                        ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const VisitorListing()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 59,left: 150),
                      child: Icon(Icons.notifications,size: 23,color: Colors.deepPurpleAccent,),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 16, 18, 16),
                child: CustomTextField(
                    hint: "Search using Token/ Vehicles/ Driver No.",
                  prefixIcon: const Icon(Icons.search_outlined , color: iconColor,),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: containerImage(
                      pinkColor,
                      darkPink,
                      "assets/images/delivery-truck 2.png",
                      "05",
                      "Inward Vehicle",
                      "+5% from yesterday"

                    ),
                  ),
                  const SizedBox(width: 13,),
                containerImage(
                  purpleColor,
                  darkPurple,
                  "assets/images/delivery-truck 3.png",
                  "02",
                  "Outward Vehicle",
                  "+5% from yesterday"
                ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35,left: 20),
                child: containerImage(
                    lightGreen,
                    supportGreen,
                    "assets/images/delivery-truck (1) 1.png",
                    "06",
                    "Pending Vehicles",
                    "+5% from yesterday"
                ),
              ),
              const SizedBox(height: 60,),
              InkWell(
                onTap: (){
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                    ),
                      context: context, builder: (BuildContext context){
                    return SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 20,left: 20),
                                  child: Text("Create Inward Token",style: outfitbolds,),
                                ),
                                const SizedBox(width: 130,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Image.asset("assets/images/cross.png"),
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 30,left: 20),
                              child: Text("Vehicle Number",style: boxText,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,left: 20,right: 15),
                              child: SampleTextfield(
                                hint: 'XXXXXXX-XX-XXXX',
                              )
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 30,left: 20),
                              child: Text("Driver Name",style: boxText,),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 20,left: 20,right: 15),
                                child: SampleTextfield(
                                  hint: 'Enter Name',
                                )
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 30,left: 20),
                              child: Text("Driver Number",style: boxText,),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 20,left: 20,right: 15),
                                child: SampleTextfield(
                                  hint: 'Enter Number',
                                )
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 30,left: 20),
                              child: Text("Primary Customer Name",style: boxText,),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 20,left: 20,right: 15),
                                child: SampleTextfield(
                                  hint: 'Enter Vehicle Number',
                                )
                            ),
                            const Padding(
                              padding:  EdgeInsets.only(top: 30,left: 20),
                              child: Text("Primary Customer Number",style: boxText,),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 20,left: 20,right: 15),
                                child: SampleTextfield(
                                  hint: 'Enter Number',
                                )
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30,bottom: 30),
                              child: box(
                                  "Create"
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  );
                },
                child: box(
                  "Inward Token"
                ),
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const VehicleListing()));
                },
                child: box(
                    "Outward Token"
                ),
              ),
            ],
          ),
      ])
      )
    );
  }
}
