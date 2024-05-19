import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:niret_app/shoelist_tiles.dart';
import 'package:niret_app/textField_sales.dart';

class InternalState extends StatefulWidget {
  
  @override
  State<InternalState> createState() {
    return _InternalState();
  }
}

class _InternalState extends State<InternalState> {
  var totalquan=0;
  void quantityIncrease(){
  setState(() {
    totalquan++;
  });
  }
  @override
  Widget build(context) {
    
    return Scaffold(
        appBar: AppBar(
          title: Text('Internal Sales',
              style: GoogleFonts.ubuntu(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          backgroundColor: Color.fromARGB(255, 253, 110, 15),
        ),
        body: Container(
        
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [ Row(
                  children: [
                    TextFieldSales('Name'),
                    const SizedBox(width: 50),
                    TextFieldSales('ID')
                  ],
                ),
                
              
              const SizedBox(height: 6),
              TextFieldSales('Department'),
            const SizedBox(height: 30),
            
            Row(
             
              children:  [
               SizedBox(width: 4),
              Expanded(child: Text('Item Name:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.pink),)),
            
              Expanded(child: Text('Price:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.pink))),
             
              Expanded(child: Text('Size:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.pink))),
              
              Expanded(child: Text('Total quantity:$totalquan',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 7, 99, 236))))
              ],
            ),  
            SizedBox(
              height: 320,
              child: ListView(children: [
              ShoeListTiles('MDV 25 ','200 BDT',quantityIncrease,totalquan),
              ShoeListTiles('MDV 26 ','200 BDT',quantityIncrease,totalquan) ,
              ShoeListTiles('Run Shoes','200 BDT',quantityIncrease,totalquan) ,
              ShoeListTiles('Fila 003 ','300 BDT',quantityIncrease,totalquan) ,
              ShoeListTiles('Fila 004 ','500 BDT',quantityIncrease,totalquan) ,
              ShoeListTiles('Easy KID 525 ','200 BDT',quantityIncrease,totalquan) ,
              ShoeListTiles('MH 100 ','200 BDT',quantityIncrease,totalquan),
              ShoeListTiles('MH 200 ','800 BDT',quantityIncrease,totalquan)   
              ],
              
              ),
            ),
          const SizedBox(height:6),
          Padding (
            padding: const EdgeInsets.only(left: 600),
            child: ElevatedButton(onPressed: (){}, 
            style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 101, 41),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(20),),
            
            child:const Text('Submit')
            ),
          )    
            ],
          ),
        ),
        );
  }
}
