import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                width: 35,
                height: 35,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFFE5E5E5),
                ),
                child: SvgPicture.asset('assets/images/back.svg',
                  width: 8.0,
                  height: 15,),
              ),
              Spacer(),
              Container(
                alignment: Alignment.center,
                child:
                Text(
                  'Select delivery method',
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Spacer(),

            ],
          ),
        ),
        body: Column(
          children: [
           fundMethod(text: "Select  a delivery address",
          imagePath: Icon(Icons.home, color: Colors.blue,),
          icon:  Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,)
           ),
            fundMethod(text: "Use a pickup location",
                imagePath: Icon(Icons.location_pin, color: Colors.blue,),
               icon:  Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,)
           ),
          ],
      ),
      ),
    );
  }
}

fundMethod (
{

required String text,
  required Icon imagePath,
required Icon icon,
}){
    return Padding(padding: EdgeInsets.all(15),
      child: Container(
        padding: EdgeInsets.all(12),
      width: double.infinity,
      height: 74,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFFE5E5E5),
          width: 0.5,
        ),
      ),
        child: Row(children: [
          Container(
            width: 42,
            height: 42,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFFE2EDFF),
              shape: BoxShape.circle,
            ),
            child: imagePath,
          ),
      SizedBox(width: 25,),
          Text(
            text,
            style: TextStyle(
              color: Color(0xFF2E2E42),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        Spacer(),
         icon

        ],),
    ),
    );
  }
