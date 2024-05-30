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
    return DefaultTabController(
      length: 4,
      
      child: Scaffold(
      
        appBar: AppBar(
          elevation: 8,
          shadowColor: Colors.black,
          leading: IconButton(onPressed: (){}, icon:const Icon(Icons.menu)),
          titleSpacing: 20,
            title: Text(
              'Dashboard ',
              style: GoogleFonts.ubuntu(
                  color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          flexibleSpace: Container(
            decoration:const BoxDecoration(gradient: LinearGradient(colors: [ Color.fromARGB(255, 255, 147, 7), Color.fromARGB(255, 255, 199, 32)],
            begin:Alignment.topLeft,
            end: Alignment.bottomRight)),
          ),
            
            bottom:const TabBar(
              indicatorColor: Colors.black,
              indicatorWeight: 4,
              labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(color: Color.fromARGB(255, 153, 17, 17),fontWeight: FontWeight.bold),
              tabs: [
              Tab(text:'Sales'),
              Tab(text: 'Purchase'),
              Tab(text: 'Material Management'),
              Tab(text: 'Production')
            ]),
            ),
      
      body: TabBarView(
        children: [
        Container(
        child: ListView(children: [
        
          DashboardTiles('Internal Sales'),
          DashboardTiles('Booking and Sales'),
          DashboardTiles('Export LC'),
          DashboardTiles('Export Document'),
          DashboardTiles('Sales Offer')
        
        ],
        
        ),
      ),
      Column(),
      Column(),
      Column()          

        ],
      )
    
      ),
    );
  }
}
