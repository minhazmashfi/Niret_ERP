import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Approval_Details extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gift Approval',
            style: GoogleFonts.ubuntu(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 253, 110, 15),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 4,
          ),
          Container(
            height: 100,
            width: double.infinity,
            child: Card(
              color: Color.fromARGB(255, 206, 204, 199),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: Md.Irfan Ahmed',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Id: 1234789',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Rank: Officer',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Card(
            color: Color.fromARGB(255, 174, 226, 230),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Item Name 1',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 50),
                      Text(
                        '36',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        '200 BDT',
                        style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 236, 18, 18),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Text(
                        'Item Name 2',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Text(
                        '36',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        '300 BDT',
                        style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 236, 18, 18),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Text(
                        'Item Name 3',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Text(
                        '36',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        '300 BDT',
                        style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 236, 18, 18),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  DottedLine(lineLength: double.infinity),
                  const SizedBox(height: 5,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Total= ',style: GoogleFonts.bebasNeue(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
            Text('800',style: GoogleFonts.bebasNeue(color: const Color.fromARGB(255, 228, 16, 16),fontSize: 14,fontWeight: FontWeight.bold),),
            Text(' BDT',style: TextStyle(color: Color.fromARGB(255, 8, 8, 8),fontSize: 14),)
            ],),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                'Approve',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))))
        ],
      ),
    );
  }
}
