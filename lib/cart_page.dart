import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_line/dotted_line.dart'; 


class CartPage extends StatefulWidget {
  CartPage(this.itemInfo,this.total, {super.key});
  final List<Map<String, Object>> itemInfo;
  int total;
  @override
  State<CartPage> createState() {
    return _CartPage();
  }
}

class _CartPage extends State<CartPage> {
  @override
  Widget build(context) {
  
    return Scaffold(
      appBar: AppBar(
          title: Text('Cart',
              style: GoogleFonts.ubuntu(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          backgroundColor: Color.fromARGB(255, 253, 110, 15)),
      backgroundColor: Color.fromARGB(255, 206, 202, 190),
      body: 
     
      SizedBox(
        
        child: (){
           if (widget.itemInfo.isEmpty){
        return Center(child: Text('No item has been selected'));
      }
    return
        Column(
          children: [
          Card(
            margin: EdgeInsets.all(6),
            color: const Color.fromARGB(255, 245,235,177),
            elevation: 8,
            
            child: 
            
          Column(
            children: [
              Column(
                  children: widget.itemInfo.map((info) {
                    
                  return Padding(
                    padding: EdgeInsets.only(bottom: 4,left: 4,top:2),
                    child: Row(children: [
                      
                                    Expanded(
                                      child: Text(
                                        info['itemName'].toString(),
                                        style: GoogleFonts.ubuntuMono(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(255, 7, 1, 61)),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'N/A',
                                        style: GoogleFonts.ubuntuMono(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(255, 7, 1, 61)),
                                      ),
                                    ),
                                    
                                    Expanded(
                                    
                                      child: Text(
                                        info['price'].toString()+' BDT',
                                        style: GoogleFonts.ubuntuMono(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(255, 7, 1, 61)),
                                      ),
                                    ),
                                    
                                    Expanded(
                                      child: ElevatedButton(
                                          
                                          onPressed: () {
                                            widget.itemInfo.remove(info);
                                            print(widget.itemInfo);
                                            setState(() {});
                                          },
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.all(2),
                                              backgroundColor:
                                                  Color.fromARGB(255, 238, 1, 1),
                                              foregroundColor: Colors.white),
                                              
                                              
                                          child: const Text(
                                            'Remove',
                                            style: TextStyle(
                                                fontSize: 12, fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                       
                                  ]),
                  );
                               
                  }).toList(),
                 
                ),
          const SizedBox(height: 5,),
          DottedLine(direction: Axis.horizontal,lineLength: double.infinity,),    
          const SizedBox(height: 6,),
          Text('Total= '+widget.total.toString()+' BDT')  
            ],

          )
  ),  




          const SizedBox(height: 6),
          ElevatedButton(onPressed: (){
            showDialog(context: context, builder:(context)=> AlertDialog(content: Text('Submitted Succesfully!'), alignment: Alignment.bottomCenter,));
          },
           style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 20, 20, 20)),
           child: const Text('Submit',style:  TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white))),

          ],
        );
        }()
      ),
    );
  }
}
