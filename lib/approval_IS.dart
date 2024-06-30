import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Approval_IS extends StatefulWidget{
  Approval_IS({super.key});
  @override 
  State<Approval_IS> createState() {
   
    return Approval_IS_State();
  }
}
class Approval_IS_State extends State<Approval_IS>{
 @override
 Widget build(context){
  return Scaffold(
    appBar: AppBar(
        title: Text('Gift Approval',
            style: GoogleFonts.ubuntu(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 253, 110, 15),
    ),
    body: Column(children: [
     Text('Gift Requests',style: GoogleFonts.ubuntu(fontSize:18,fontWeight:FontWeight.bold,color:Color.fromARGB(255, 87, 223, 25)),), 
     DottedLine(lineLength:double.infinity,dashColor: Color.fromARGB(255, 51, 69, 235),),
     const SizedBox(height: 12,),
     Padding(
       padding: const EdgeInsets.only(left: 6.0,right: 6.0),
       child: Container(
        height:50 ,
         child: Card(
          color: Color.fromARGB(255, 193, 207, 223),
          elevation: 3 ,
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(40) ),
          margin: EdgeInsets.all(4),
          
          child:Row(
            children: [
              const SizedBox(width:4,),
              Text('Md Irfan Ahmed',style: GoogleFonts.roboto(fontSize:14, color:Color.fromARGB(255, 38, 24, 121),fontWeight:FontWeight.bold),),
              const Spacer(),
              Text('ABC12300',style: GoogleFonts.roboto(fontSize:14, color:Color.fromARGB(255, 38, 24, 121),fontWeight:FontWeight.bold),),
              const SizedBox(width:4,)
            ],
          )
         ),
       ),
     ),
      Padding(
       padding: const EdgeInsets.only(left: 6.0,right: 6.0),
       child: Container(
        height:50 ,
         child: Card(
          color: Color.fromARGB(255, 193, 207, 223),
          elevation: 3 ,
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(40) ),
          margin: EdgeInsets.all(4),
          
          child:Row(
            children: [
              const SizedBox(width:4,),
              Text('Md Minhaz Ahmed',style: GoogleFonts.roboto(fontSize:14, color:Color.fromARGB(255, 38, 24, 121),fontWeight:FontWeight.bold),),
              const Spacer(),
              Text('ABF14300',style: GoogleFonts.roboto(fontSize:14, color:Color.fromARGB(255, 38, 24, 121),fontWeight:FontWeight.bold),),
              const SizedBox(width:4,),
            ],
          )
         ),
       ),
     ),
      Padding(
       padding: const EdgeInsets.only(left: 6.0,right: 6.0),
       child: Container(
        height:50 ,
         child: Card(
          color: Color.fromARGB(255, 193, 207, 223),
          elevation: 3 ,
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(40) ),
          margin: EdgeInsets.all(4),
          
          child:Row(
            children: [
              const SizedBox(width:4,),
              Text('Md Irfan Ahmed',style: GoogleFonts.roboto(fontSize:14, color:Color.fromARGB(255, 38, 24, 121),fontWeight:FontWeight.bold),),
              const Spacer(),
              Text('ABE32300',style: GoogleFonts.roboto(fontSize:14, color:Color.fromARGB(255, 38, 24, 121),fontWeight:FontWeight.bold),),
              const SizedBox(width:4,),
            ],
          )
         ),
       ),
     ),
    
      ],),
  
  );
 }
}