import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:niret_app/internal_sale.dart';

class DashboardTiles extends StatelessWidget {
  DashboardTiles(this.labelText, this.iconString,{super.key});
  final String labelText;
  final String iconString;
  @override
  Widget build(context) {
    return 
    Card(
        margin: EdgeInsets.all(5),
        color: Color.fromARGB(255, 243, 233, 97),
        elevation: 10.0,
        
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(20)) ),
        child:InkWell(
          focusColor:Color.fromARGB(255, 243, 201, 51) ,
          
          onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>InternalState()));
      },
          child:  Column(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
            Image.asset(iconString,height:70,width:70),
            Text(labelText,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),)
           
           ]
           ),
        ),
          shadowColor: Colors.black,
      );
      
      
  
  }
}
