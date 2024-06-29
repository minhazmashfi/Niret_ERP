import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:niret_app/internal_sale.dart';

class ShoeListTiles extends StatelessWidget {
  ShoeListTiles (this.labelText,this.price,this.quantityIncrease,this.total,this.totalpricecal, {super.key});
  final String labelText;
  final int price;
  final Function quantityIncrease;
  final int total;
  final Function totalpricecal;
 
  
  
  @override
  Widget build(context) {
    
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.5, horizontal: 2),
        child: Container(
          height: 50,
          decoration:
          BoxDecoration(
              color: Color.fromARGB(255, 243, 232, 176)
              ),
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
                              fontSize: 14, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 7, 1, 61)),
                        ),
                      ),
                      
                      
                          Expanded(
                          
                            child: Text(
                              price.toString(),
                              style: GoogleFonts.ubuntuMono(
                                  fontSize: 14, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 7, 1, 61)),
                            ),
                          ),
                    
                         Expanded(
                            child: Text(
                              ' N/A',
                              style: GoogleFonts.ubuntuMono(
                                  fontSize: 14, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 7, 1, 61)),
                            ),
                          ),
                    
                      const Spacer(),
                      ElevatedButton(onPressed: (){
                      totalpricecal(price);
                      List itemsummary=[];
                      itemsummary.add(labelText);
                      itemsummary.add(price);
                      quantityIncrease(itemsummary);
                      showDialog(context: context, builder:(context)=> const AlertDialog(content: Text('Successfully added to Cart'),alignment:Alignment.bottomCenter));
                      
                        
                      }, 
                      
                      style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255,81,160,94),foregroundColor: Colors.white,shape: RoundedRectangleBorder(),fixedSize: Size(70, 50)
                      ),
                      
                      child: const Text('Add',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),))
                      ]
                    ),
              
                  ],
                ),
                
              
              
            ),
          ),
        );
        
  }
}
