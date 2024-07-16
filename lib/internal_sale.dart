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
  final List<String> memo = ['Select a memo','maf/24/07/001', 'maf/24/07/002', 'maf/24/07/003'];

  @override
  State<InternalState> createState() {
    return _InternalState();
  }
}

class _InternalState extends State<InternalState> {
  var totalprice = 0;
  var totalquan = 0;
  List<Map<String, Object>> itemInfo = [];
  
  String selectedMemo = 'Select a memo';

  void quantityIncrease(List addedItems) {
    itemInfo.add({
      'itemName': addedItems[0],
      'price': addedItems[1],
      'size': addedItems[2]
    });

    setState(() {
      totalquan++;
      print(itemInfo);
    });
  }

  void totalpricecal(int price, String action) {
    if (action == 'add') {
      totalprice = totalprice + price;
    } else {
      totalprice = totalprice - price;
      print(totalprice);
    }
  }

  @override
  Widget build(context) {
    return Scaffold(
      drawer: SideBar_IS(itemInfo, totalprice, totalpricecal),
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
                      builder: (context) =>
                          CartPage(itemInfo, totalprice, totalpricecal),
                    ));
              },
              icon: Image.asset('assets/images/cart.png'))
        ],
      ),
      backgroundColor: Color.fromARGB(255, 254, 255, 253),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 4,
            ),
            TextFieldSales('Name'),
            const SizedBox(height: 4),
            TextFieldSales('ID'),
            const SizedBox(
              height: 4,
            ),
            Container(
              height: 40,
              width: 600,
              margin: EdgeInsets.only(left: 2,right:2),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 248, 237, 184),
                border: Border.all(color: Colors.black)
              ),
              child: DropdownButton(
                items: widget.memo.map(
                  (String memo) {
                    print(memo);
                    return DropdownMenuItem(
                      child: Text(memo),
                      value: memo,
                    );
                  },
                ).toList(),
                onChanged: (String? newvalue) {
                  setState(() {
                    selectedMemo = newvalue!;
                  });
                },
                value: selectedMemo,
              ),
            ),
            const SizedBox(height: 120),
          
            SizedBox(
              height: 500,
              child: ListView(
                children: [
                  ShoeListTiles('MDV 25 ', 200, quantityIncrease, totalquan,
                      totalpricecal),
                  ShoeListTiles('MDV 26 ', 200, quantityIncrease, totalquan,
                      totalpricecal),
                  ShoeListTiles('Run Shoes', 200, quantityIncrease, totalquan,
                      totalpricecal),
                  ShoeListTiles('Fila 003 ', 300, quantityIncrease, totalquan,
                      totalpricecal),
                  ShoeListTiles('Fila 004 ', 500, quantityIncrease, totalquan,
                      totalpricecal),
                  ShoeListTiles('Easy KID 525 ', 200, quantityIncrease,
                      totalquan, totalpricecal),
                  ShoeListTiles('MH 100 ', 200, quantityIncrease, totalquan,
                      totalpricecal),
                  ShoeListTiles('MH 200 ', 800, quantityIncrease, totalquan,
                      totalpricecal),
                  ShoeListTiles('MDV 26 ', 200, quantityIncrease, totalquan,
                      totalpricecal),
                  ShoeListTiles('Run Shoes', 200, quantityIncrease, totalquan,
                      totalpricecal),
                  ShoeListTiles('Fila 004 ', 500, quantityIncrease, totalquan,
                      totalpricecal),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
