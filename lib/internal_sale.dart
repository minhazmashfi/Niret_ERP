import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class InternalState extends StatefulWidget{

  @override 
  State<InternalState> createState(){
    return _InternalState();
  }
}
class _InternalState extends State<InternalState>{
  @override
  Widget build(context){
    return Scaffold(
    appBar: AppBar(
      title: Text('Internal Sales', style: GoogleFonts.ubuntu(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
      backgroundColor: Color.fromARGB(255, 253, 110, 15),
    ),
    body: Container(
      child:  Row(
        children: [
           SizedBox(
             width: 500,
             child: TextFormField(
                        keyboardType: TextInputType.name,
                        style: GoogleFonts.acme(color: const Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration(
                          labelStyle:
                            GoogleFonts.acme(color: Color.fromARGB(255, 51, 2, 143), fontSize: 18),
                          labelText: 'UserName',
                          hintText: 'Enter Username',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String user) {
                        }
                      ),
           ),
                    const SizedBox(width: 30,),
                    SizedBox(
                      width: 500,
                      child: TextFormField(
                        
                        keyboardType: TextInputType.name,
                        style: GoogleFonts.acme(color: const Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration(
                          focusColor: Colors.brown,
                          labelStyle:
                            GoogleFonts.acme(color: Color.fromARGB(255, 31, 3, 133), fontSize: 18),
                          labelText: 'Password',
                          hintText: 'Enter Password',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String pass) {
                        
                        },
                      ),
                    ),   ],
      ),
    )
    );
       
      
    
  }

}
