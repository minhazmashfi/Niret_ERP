import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:niret_app/internal_sale.dart';

class ShoeListTiles extends StatelessWidget {
  ShoeListTiles (this.labelText, {super.key});
  final String labelText;
  @override
  Widget build(context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
        child: Container(
          height: 40,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 11, 253, 132),
              border: Border.all(color: Color.fromARGB(255, 1, 61, 4), width: 2.5)),
          alignment: Alignment.centerLeft,
          child: Padding(padding:const EdgeInsets.only(left: 4) ,
            child: 
                Text(
                  labelText,
                  style: GoogleFonts.ubuntuMono(
                      fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 7, 1, 61)),
                ),
                
              
              
            ),
          ),
        );
        
  }
}
