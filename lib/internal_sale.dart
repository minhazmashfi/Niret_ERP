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
            children: [
              Row(
                children: [
                  TextFieldSales('Name'),
                  const SizedBox(width: 50),
                  TextFieldSales('ID')
                ],
              ),
              const SizedBox(height: 6,),
              TextFieldSales('Department'),
            const SizedBox(height: 30),  
            SizedBox(
              height: 360,
              child: ListView(children: [
              ShoeListTiles('MDV 25 '),
              ShoeListTiles('MDV 26 ') ,
              ShoeListTiles('Run Shoes') ,
              ShoeListTiles('Fila 003 ') ,
              ShoeListTiles('Fila 004 ') ,
              ShoeListTiles('Easy KID 525 ') ,
              ShoeListTiles('MH 100 '),
              ShoeListTiles('MH 200 ')   
              ],
              
              ),
            ),
          const SizedBox(height:6),
          Padding (
            padding: EdgeInsets.only(left: 600),
            child: ElevatedButton(onPressed: (){}, 
            style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 101, 41),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(20),),
            
            child: Text('Submit')
            ),
          )    
            ],
          ),
        ),
        );
  }
}
