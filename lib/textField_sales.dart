import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldSales extends StatelessWidget{
  TextFieldSales(this.label,{super.key});
  final String label;
 Widget build(context){
  return Container(
    decoration: BoxDecoration(  color: Color.fromARGB(255, 157, 226, 253),
              border: Border.all(color: Color.fromARGB(255, 1, 61, 4), width: 3)),
    child:SizedBox(
      width:600 ,
      child: TextFormField(
                          keyboardType: TextInputType.name,
                          style: GoogleFonts.acme(
                              color: const Color.fromARGB(255, 0, 0, 0)),
                          decoration: InputDecoration(
                            labelStyle: GoogleFonts.acme(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18),
                            labelText: label,
                            hintText: 'Enter $label',
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String user) {}),
    ),
                  
  );
 } 
}