import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:niret_app/internal_sale.dart';

class ShoeListTiles extends StatelessWidget {
  ShoeListTiles (this.labelText,this.price,this.quantityIncrease,this.total, {super.key});
  final String labelText;
  final String price;
  final Function quantityIncrease;
  final int total;
 
  
  
  @override
  Widget build(context) {
    
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 2),
        child: Container(
          height: 40,
          decoration:
          BoxDecoration(
              color: Color.fromARGB(255, 11, 253, 132),
              border: Border.all(color: Color.fromARGB(255, 1, 61, 4), width: 2.5)),
          alignment: Alignment.centerLeft,
          child: Padding(padding:const EdgeInsets.only(left: 4) ,
            child:
                Column(
                  children: [
                    Row(
                      
                      children:[ Expanded(
                        child: Text(
                          labelText,
                          style: GoogleFonts.ubuntuMono(
                              fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 7, 1, 61)),
                        ),
                      ),
                      
                      
                          Expanded(
                          
                            child: Text(
                              price,
                              style: GoogleFonts.ubuntuMono(
                                  fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 7, 1, 61)),
                            ),
                          ),
                    
                         Expanded(
                            child: Text(
                              ' N/A',
                              style: GoogleFonts.ubuntuMono(
                                  fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 7, 1, 61)),
                            ),
                          ),
                    
                      const Spacer(),
                      ElevatedButton(onPressed: (){
                      
                      List itemsummary=[];
                      itemsummary.add(labelText);
                      itemsummary.add(price);
                      quantityIncrease(itemsummary);
                      showDialog(context: context, builder:(context)=> const AlertDialog(content: Text('Successfully added to Cart'),alignment:Alignment.bottomCenter));
                      
                        
                      }, 
                      
                      style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 1, 66, 3),foregroundColor: Colors.white
                      ),
                      
                      child: const Text('Add',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),))
                      ]
                    ),
              
                  ],
                ),
                
              
              
            ),
          ),
        );
        
  }
}
