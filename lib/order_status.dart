import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

class OrderStatus extends StatefulWidget {
  @override
  State<OrderStatus> createState() {
    return OrderStatus_State();
  }
}

class OrderStatus_State extends State<OrderStatus> {
  Widget CardWidget(String text, String status ){
    return 
          Container(
            height: 60,
            width: 250,
            child: Card(
              elevation: 4.5,
              shadowColor: Colors.orange,
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.only(top: 12, left: 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(70),
                      bottomRight: Radius.circular(70))),
              color: Color.fromARGB(255, 255, 255, 255),
              child:(){ 
                if(status=='done'){
              return  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/green_line.png',height:45,width: 38,),
                      Text(
                        text,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    const SizedBox(width: 20,),
                   
                    
                    Icon(Icons.check,color: const Color.fromARGB(255, 10, 172, 15),)
                    
                    ],
                  ),
                ]
            );
            }
         
            return  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/red_line.png',height:45,width: 38,),
                      Text(
                        text,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    const SizedBox(width: 20,),
                   
                    
                    Icon(Icons.close,color: Color.fromARGB(255, 243, 9, 9),)
                    
                    ],
                  ),
                ]
            );
            
            }(),
          ),
          );
  }
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Status',
            style: GoogleFonts.ubuntu(
                color: Color.fromARGB(255, 255, 250, 250),
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 253, 110, 15),
      ),
      backgroundColor: Color.fromARGB(245, 247, 245, 245),

      body: RowSuper(
        
        children:[
          const SizedBox(width: 30,),
          DottedLine(direction: Axis.vertical,dashGapLength: 1,), 
          
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CardWidget('Order Submission','done'),
          const SizedBox(height: 25,),
          CardWidget('Order Approval', 'done'),
          const SizedBox(height: 25,),
          CardWidget('Payment Confirmation', 'undone'),
          const SizedBox(height: 25,),
          CardWidget('Ready for Delivery', 'undone'),
          const SizedBox(height: 25,),
          CardWidget('Delivered', 'undone'),
          const SizedBox(height: 25,)
         
        ]),
        
      ],
      innerDistance: -12,
      ),
    );
  }
}
