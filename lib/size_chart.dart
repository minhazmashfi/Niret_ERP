import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeChart extends StatelessWidget{
SizeChart(this.shoeName,{super.key});
final String shoeName;
@override
Widget build(context){
  return Container(
    height: 500,
    width: 300,
    child: Column(
      children: [
        Container(
          height: 50,
          width: double.infinity,
         decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(10))
         ),
          
          child:Center(
            child:Text(shoeName)
          ) ,
        )
      ],
    ),
  );
  
}
}