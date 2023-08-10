import 'package:flutter/material.dart';
import 'package:snowman/visitor_listing/sample_textfield.dart';

import '../utils/colors.dart';

class VisitorListing extends StatefulWidget {
  const VisitorListing({Key? key}) : super(key: key);

  @override
  State<VisitorListing> createState() => _VisitorListingState();
}

class _VisitorListingState extends State<VisitorListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Padding(
                    padding:  EdgeInsets.only(top: 5,left: 10),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5,left: 10),
                    child: Text("Visitor Listing",style: TextStyle(
                      fontSize: 30,color: Colors.black87,fontWeight: FontWeight.w700
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5,left: 100),
                    child: Text(" Add",style: TextStyle(
                        fontSize: 20,color: Colors.green,fontWeight: FontWeight.w600
                    ),)),
                ],
              ),
              const Padding(
                padding:  EdgeInsets.fromLTRB(18, 5, 18, 5),
                child: Text("Date",style: TextStyle(
                  fontSize: 14,color: textColor,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 18,top: 5,bottom: 8),
                child: SampleTextfield( hint: '31 July 2023'),
              ),
              const Padding(
                padding:  EdgeInsets.fromLTRB(18, 5, 18, 5),
                child: Text("Time In",style: TextStyle(
                  fontSize: 14,color: textColor,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 18,top: 5,bottom: 8),
                child: SampleTextfield( hint: '09:50 AM'),
              ),
              const Padding(
                padding:  EdgeInsets.fromLTRB(18, 5, 18, 5),
                child: Text("Visitor Name",style: TextStyle(
                  fontSize: 14,color: textColor,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 18,top: 5,bottom: 8),
                child: SampleTextfield( hint: 'Enter Visitor Name'),
              ),
              const Padding(
                padding:  EdgeInsets.fromLTRB(18, 5, 18, 5),
                child: Text("Company Name & Address",style: TextStyle(
                  fontSize: 14,color: textColor,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 5, 18, 5),
                child: SampleTextfield( hint: 'Enter Company Name & Address'),
              ),
              const Padding(
                padding:  EdgeInsets.fromLTRB(18, 5, 18, 5),
                child: Text("Purpose of Visit",style: TextStyle(
                  fontSize: 14,color: textColor,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 18,top: 5,bottom: 8),
                child: SampleTextfield( hint: 'Enter Purpose of Visit'),
              ),
              const Padding(
                padding:  EdgeInsets.fromLTRB(18, 10, 18, 16),
                child: Text("Purpose of Visit",style: TextStyle(
                  fontSize: 14,color: textColor,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 18,top: 5,bottom: 8),
                child: SampleTextfield( hint: 'Enter Purpose of Visit'),
              ),
              Row(
                children: const [
                  Padding(
                    padding:   EdgeInsets.fromLTRB(18, 10, 18, 16),
                    child: Text("Government ID",style: TextStyle(
                        fontSize: 14,color: Colors.black87
                    )),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 5,left: 170),
                    child: Text("Upload",style: TextStyle(
                      fontSize: 14,color: Colors.green,fontWeight: FontWeight.w500
                    ),),
                  ),
                ],
              ),
      Padding(
        padding: const EdgeInsets.all(17.0),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black45,width: 3)
          ),
          child: const Center(child: Text("Next",style: TextStyle(
              color: Colors.black87,fontSize: 17,fontWeight: FontWeight.w500
          ),)),
        )),
            ],
          ),
        ),
      ),
    );
  }
}
