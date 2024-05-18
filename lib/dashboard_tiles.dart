import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:niret_app/internal_sale.dart';

class DashboardTiles extends StatelessWidget {
  DashboardTiles(this.labelText, {super.key});
  final String labelText;
  @override
  Widget build(context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
        child: Container(
          height: 150,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 7, 185, 255),
              border: Border.all(color: Color.fromARGB(255, 1, 61, 4), width: 2.5)),
          alignment: Alignment.centerLeft,
          child: Padding(padding:const EdgeInsets.only(left: 4) ,
            child: Row(
              children: [
                Text(
                  labelText,
                  style: GoogleFonts.ubuntuMono(
                      fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 7, 1, 61)),
                ),
              const SizedBox(width: 50),  
              TextButton(onPressed: (){
                if (labelText=='Internal Sales'){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => InternalState(),));
                }
              }, child: const Text('Enter'))  
              ],
            ),
          ),
        ),
        );
  }
}
