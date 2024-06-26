import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldSales extends StatelessWidget{
  TextFieldSales(this.label,{super.key});
  final String label;
 Widget build(context){
  return Container(
    decoration: BoxDecoration(  color: Color.fromARGB(255, 248,237,184),
              ),
    child:SizedBox(
      height:40 ,
      width:600 ,
      child: TextFormField(
                          keyboardType: TextInputType.name,
                          style: GoogleFonts.acme(
                              color: const Color.fromARGB(255, 0, 0, 0)),
                          decoration: InputDecoration(
                            labelStyle: GoogleFonts.acme(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 16),
                            labelText: label,
                            hintText: 'Enter $label',
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String user) {}),
    ),
                  
  );
 } 
}