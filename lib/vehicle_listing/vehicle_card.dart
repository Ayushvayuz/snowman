import 'package:flutter/material.dart';
import 'package:snowman/utils/colors.dart';

import '../utils/style.dart';

class VehicleCard extends StatefulWidget {
  const VehicleCard({Key? key}) : super(key: key);

  @override
  State<VehicleCard> createState() => _VehicleCardState();
}

class _VehicleCardState extends State<VehicleCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 21,right: 21),
            child: Card(
              margin: EdgeInsets.zero,
              color: cardColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Vehicle No. : ",style: cardText,),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("DL 08 CW 8597",style: cardText,),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Company : ",style: cardText,),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Snowman Logistic",style: cardText,),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Driver Name: : ",style: cardText,),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Arun Kumar",style: cardText,),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Status : : ",style: cardText,),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Token Generated",style: cardText,),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Token Number : ",style: cardText,),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("VIR23-24TIN00001",style: cardText,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                  ),
                  context: context, builder: (BuildContext context){
                return Container(
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
                            child: Text("Filter",style: outfitbolds,),
                          ),
                          const SizedBox(width: 270,),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.asset("assets/images/cross.png"),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20,left: 20),
                        child: Text("Select Date",style: TextStyle(
                            fontSize: 15,color:textColor),),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20,top: 10),
                            child: Text("Start date",style: TextStyle(
                                fontSize: 13,color: bottomTextColor
                            ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 100,top: 10),
                            child: Text("End date",style: TextStyle(
                                fontSize: 13,color: bottomTextColor
                            ),),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Container(
                              height: 48,
                              width:115,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black87)
                              ),
                              child: Row(
                                children: const [
                                  Icon(Icons.calendar_month_outlined,color: Colors.redAccent,),
                                  Text("06/07/2023"),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45,top: 10),
                            child: Container(
                              height: 48,
                              width:115,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black87)
                              ),
                              child: Row(
                                children: const [
                                  Icon(Icons.calendar_month_outlined,color: Colors.redAccent,),
                                  Text("19/07/2023"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20,top: 20),
                        child:Text("Select Status",style: TextStyle(
                            fontSize: 15,color: textColor
                        ),),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20,top: 20,right: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Token Generated",
                            suffixIcon:Icon(Icons.keyboard_arrow_down,size: 16,color: Colors.black87,),
                            hintStyle: TextStyle(color:textColor,fontSize: 15),
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                            focusColor: bordersColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 80,right: 20),
                        child: Container(
                            height: 56,
                            width:356,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color:bottomColor,
                            ),
                            child: const Center(
                                child: Text("Submit",style: TextStyle(color: Colors.white,fontSize:20)))
                        ),
                      )
                    ],
                  ),
                );
              }
              );
              },
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green
                ),
                child: const Center(child: Text("Create Gate Pass",style: TextStyle(
                  color: Colors.white,fontSize: 14
                ),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
