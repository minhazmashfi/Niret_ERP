import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class OrderStatus extends StatefulWidget{
  @override
  State<OrderStatus> createState() {
      return OrderStatus_State();
  }
}
class OrderStatus_State extends State<OrderStatus>{
  Widget build(context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Status',
            style: GoogleFonts.ubuntu(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 253, 110, 15),
      ),
      body:Column(children: [
       Container(
          height: 70,
          child: Card(
          margin: EdgeInsets.only(top: 6),  
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          color: Color.fromARGB(255, 71, 70, 70),

          child:  Column(
              
              children: [
                Row(children: [
                  const SizedBox(width: 4,),
                  Text('Order Submission',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold)),
                  
                ],),
                Spacer(),
                LinearProgressIndicator(color: Colors.yellow,value: 1),
              ],
            ),
          ),
          
          ),
      Container(
          height: 70,
          child: Card(
          margin: EdgeInsets.only(top: 6),  
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          color: Color.fromARGB(255, 71, 70, 70),

          child:  Column(
              
              children: [
                Row(children: [
                  const SizedBox(width: 4,),
                  Text('Order Approval',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold)),
                  
                ],),
                Spacer(),
                LinearProgressIndicator(backgroundColor: Colors.yellow,),
              ],
            ),
          ),
          
          ),
       
        Container(
          height: 70,
          child: Card(
          margin: EdgeInsets.only(top: 6),  
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          color: Color.fromARGB(255, 71, 70, 70),

          child:  Column(
              
              children: [
                Row(children: [
                  const SizedBox(width: 4,),
                  Text('Payment Confirmation',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold)),
                  
                ],),
                Spacer(),
                LinearProgressIndicator(backgroundColor: Colors.yellow,),
              ],
            ),
          ),
          
          ),
      ]),
      
      );
  
  }

}