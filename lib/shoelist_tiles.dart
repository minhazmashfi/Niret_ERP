import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:niret_app/internal_sale.dart';
import 'package:niret_app/size_chart.dart';
import 'package:flutter_popup_card/flutter_popup_card.dart';

class ShoeListTiles extends StatefulWidget {
  ShoeListTiles (this.labelText,this.price,this.quantityIncrease,this.total,this.totalpricecal, {super.key});
  final String labelText;
  final int price;
  final Function quantityIncrease;
  final int total;
  final Function totalpricecal;
  List<String> sizeLists=[
    '36',
    '37',
    '38',
    '40',
    '41',
    '42',
    '43',
    '44'
  ];
@override
State<ShoeListTiles> createState() {
    return _ShoeListTiles();
  }  
}
  
class _ShoeListTiles extends State<ShoeListTiles> { 
  String dropdownvalue='36';
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
                          widget.labelText,
                          style: GoogleFonts.ubuntuMono(
                              fontSize: 14, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 7, 1, 61)),
                        ),
                      ),
                      
                      
                          Expanded(
                          
                            child: Text(
                              widget.price.toString()+' BDT',
                              style: GoogleFonts.ubuntuMono(
                                  fontSize: 14, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 7, 1, 61)),
                            ),
                          ),
                    
                         Expanded(
                            child: Container(
                              height: 40,
                              
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 236, 217, 121),
                                borderRadius: BorderRadius.all(Radius.circular(30))
                              ),
                              child:Center(
                                child: DropdownButton(
                                  menuMaxHeight: 120,
                                  
                                    items: widget.sizeLists.map((String size) {
                                      return DropdownMenuItem(
                                        
                                        value:size,
                                        child:Text(size) );
                                    },
                                    ).toList(),
                                  
                      
                                    onChanged: (String? newvalue){
                                      setState((){
                                         dropdownvalue= newvalue!;
                                      });
                                    }
                                      
                                    ,
                                    value: dropdownvalue ,
                                  ),
                                
                              ) ,
                            )
                          ),
                    
                      const Spacer(),
                      ElevatedButton(onPressed: (){
                      widget.totalpricecal(widget.price,'add');
                      List itemsummary=[];
                      itemsummary.add(widget.labelText);
                      itemsummary.add(widget.price);
                      itemsummary.add(dropdownvalue);
                      widget.quantityIncrease(itemsummary);
                      //showDialog(context: context, builder:(context)=> const AlertDialog(content: Text('Successfully added to Cart'),alignment:Alignment.bottomCenter));
                     showPopupCard(context: context,
                      builder: (context){
                        return PopupCard(
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(30))),
                      elevation: 30,
                      child: SizeChart(widget.labelText));
                      });
                      
                     
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

