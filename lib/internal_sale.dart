import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:niret_app/cart_page.dart';
import 'package:niret_app/shoelist_tiles.dart';
import 'package:niret_app/sidebar_IS.dart';
import 'package:niret_app/textField_sales.dart';
import 'package:niret_app/sidebar.dart';

class InternalState extends StatefulWidget {
  @override
  State<InternalState> createState() {
    return _InternalState();
  }
}

class _InternalState extends State<InternalState> {
  var totalprice=0;
  var totalquan = 0;
  List<Map<String, Object>> itemInfo = [];

  void quantityIncrease(List addedItems) {
    itemInfo.add({'itemName': addedItems[0], 'price': addedItems[1]});

    setState(() {
      totalquan++;
      print(itemInfo);
    });
  }
  void totalpricecal(int price){
    totalprice=totalprice+price;
  }

  @override
  Widget build(context) {
    return Scaffold(
      drawer: SideBar_IS(itemInfo,totalprice),
      appBar: AppBar(
        title: Text('Internal Sales',
            style: GoogleFonts.ubuntu(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 253, 110, 15),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartPage(itemInfo,totalprice),
                    ));
              },
              icon:  Image.asset('assets/images/cart.png'))
        ],
      ),
      backgroundColor: Color.fromARGB(255, 254, 255, 253),
      body: SingleChildScrollView(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4,),
            TextFieldSales('Name'),
            const SizedBox(height: 4),
            TextFieldSales('ID'),
            const SizedBox(height: 150),
            
            Row(
              children: [
              const  SizedBox(width: 4),
              const  Expanded(
                    child:  Text(
                  'Item Name:',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                )),
              const  Expanded(
                    child: Text('Price:',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink))),
              const  Expanded(
                    child: Text('Size:',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink))),
                Expanded(
                    child: Text('Total quantity:$totalquan',
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 7, 99, 236))))
              ],
            ),
            SizedBox(
              height: 450,
              child: ListView(
                children: [
                  ShoeListTiles(
                      'MDV 25 ', 200, quantityIncrease, totalquan,totalpricecal),
                  ShoeListTiles(
                      'MDV 26 ', 200, quantityIncrease, totalquan,totalpricecal),
                  ShoeListTiles(
                      'Run Shoes', 200, quantityIncrease, totalquan,totalpricecal),
                  ShoeListTiles(
                      'Fila 003 ', 300, quantityIncrease, totalquan,totalpricecal),
                  ShoeListTiles(
                      'Fila 004 ', 500, quantityIncrease, totalquan,totalpricecal),
                  ShoeListTiles(
                      'Easy KID 525 ', 200, quantityIncrease, totalquan,totalpricecal),
                  ShoeListTiles(
                      'MH 100 ', 200, quantityIncrease, totalquan,totalpricecal),
                  ShoeListTiles(
                      'MH 200 ', 800, quantityIncrease, totalquan,totalpricecal)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
