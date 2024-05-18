import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:niret_app/dashboard_tiles.dart';

class PanelPage extends StatefulWidget {
  @override
  State<PanelPage> createState() {
    return _PanelPageState();
  }
}

class _PanelPageState extends State<PanelPage> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Dashboard ',
            style: GoogleFonts.ubuntu(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 138, 5)),

    body: Container(
      child: ListView(children: [
      
        DashboardTiles('Internal Sales'),
        DashboardTiles('Booking and Sales'),
        DashboardTiles('Export LC'),
        DashboardTiles('Export Document'),
        DashboardTiles('Sales Offer')
      
      ],
      
      ),
    ),      
    );
  }
}
