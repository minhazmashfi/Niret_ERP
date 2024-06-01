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
            
            bottom: TabBar(
              indicatorColor: Colors.black,
              indicatorWeight: 4,
              labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(color: Color.fromARGB(255, 153, 17, 17),fontWeight: FontWeight.bold),
              tabs: [
              Tab(text:'Sales',icon: Image.asset('assets/icons/sales_bw.png',height: 30,width: 30)),
              Tab(text: 'Purchase',icon: Image.asset('assets/icons/purchase.png',height: 30,width: 30)),
              Tab(text: 'Material Management',icon: Image.asset('assets/icons/material_management.png',height: 30,width: 30)),
              Tab(text: 'Production',icon: Image.asset('assets/icons/production.png',height: 30,width: 30))
            ]),
            ),
      
      body: TabBarView(
        children: [
        Container(
        child: GridView.count(crossAxisCount: 4,children: [
        
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
