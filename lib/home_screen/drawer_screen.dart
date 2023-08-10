import 'package:flutter/material.dart';

import '../utils/style.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Navigator.pop(context);
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
    );
  }
}
