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
      body:Column(children: []),
      );

  }

}