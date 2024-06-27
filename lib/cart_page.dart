import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  CartPage(this.itemInfo, {super.key});
  final List<Map<String, Object>> itemInfo;
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
      body: SizedBox(
        child: Column(
          children: [
            Column(
              children: widget.itemInfo.map((info) {
                return SizedBox(
                  height: 60,
                  child: ListView(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 252, 248, 59),
                              border: Border.all(
                                  color: Color.fromARGB(255, 0, 0, 0), width: 2.5)),
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Row(children: [
                              Expanded(
                                child: Text(
                                  info['itemName'].toString(),
                                  style: GoogleFonts.ubuntuMono(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 7, 1, 61)),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'N/A',
                                  style: GoogleFonts.ubuntuMono(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 7, 1, 61)),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  info['price'].toString(),
                                  style: GoogleFonts.ubuntuMono(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 7, 1, 61)),
                                ),
                              ),
                              const Spacer(),
                              ElevatedButton(
                                  onPressed: () {
                                    widget.itemInfo.remove(info);
                                    print(widget.itemInfo);
                                    setState(() {});
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 238, 1, 1),
                                      foregroundColor: Colors.white),
                                  child: const Text(
                                    'Remove',
                                    style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.bold),
                                  ))
                            ]),
                            
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }).toList(),
              
            ),
            const SizedBox(height: 6),
          ElevatedButton(onPressed: (){
            showDialog(context: context, builder:(context)=> AlertDialog(content: Text('Submitted Succesfully!'), alignment: Alignment.bottomCenter,));
          },
           style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 20, 20, 20)),
           child: const Text('Submit',style:  TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white))),

          ],
        ),
      ),
    );
  }
}
