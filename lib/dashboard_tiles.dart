import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:niret_app/internal_sale.dart';

class DashboardTiles extends StatelessWidget {
  DashboardTiles(this.labelText, {super.key});
  final String labelText;
  @override
  Widget build(context) {
    return Padding(
        padding: const EdgeInsets.symmetric( vertical:2,horizontal: 2),
        child: Container(
          height: 50,
          
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 7, 185, 255),
              border: Border.all(color: const Color.fromARGB(255, 1, 61, 4), width: 2.5)),
          alignment: Alignment.bottomLeft,
          child: Padding(padding:const EdgeInsets.only(top: 50) ,
            child: Column(
              children: [
               TextButton(onPressed: (){
                if (labelText=='Internal Sales'){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => InternalState(),));
                }
              }, child:Text(labelText,style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)
              
                  
                ),
              const SizedBox(height: 20),  
              
              ],
            ),
          ),
        ),
        );
  }
}
