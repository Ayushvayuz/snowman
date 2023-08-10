import 'package:flutter/material.dart';
import 'package:snowman/vehicle_listing/vehicle_card.dart';

import '../utils/colors.dart';
import '../utils/style.dart';
import '../utils/textfield.dart';

class VehicleListing extends StatefulWidget {
  const VehicleListing({Key? key}) : super(key: key);

  @override
  State<VehicleListing> createState() => _VehicleListingState();
}

class _VehicleListingState extends State<VehicleListing> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 18,top: 65),
                  child: Icon(Icons.arrow_back_ios , color: textColor,),
                ),
                Padding(
                  padding: EdgeInsets.only(left:59 ,top:59 ),
                  child: Text("Vehicle Listing",style:vehicleListing),
                ),
                // Image.asset("assets/images/vector.png"),
                Padding(
                  padding: EdgeInsets.only(left:55 ,top:71 ),
                  child: Icon(Icons.filter_list,size:25,color:Colors.black87,),
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
            Padding(padding: const EdgeInsets.only(top: 18,left: 51),
            child: Row(
              children: const [
                Text("Inward Vehicles (19)",style: greenTexts,),
                SizedBox(width: 20,),
                Text("Outward Vehicles",style: fadeText,)
              ],
            ),
            ),
            Expanded(
                child: ListView.builder(
                  itemCount: 4,
                    itemBuilder: (context , index){
                  return SizedBox(
                      height: size.height/3.6,
                      width: size.height,
                      child: const VehicleCard());
                }
                ))
          ],
        ),
    );
  }
}
