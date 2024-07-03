import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:niret_app/dashboard_tiles.dart';
import 'package:niret_app/login_screen.dart';
import 'package:niret_app/sidebar.dart';
import 'package:back_pressed/back_pressed.dart';
import 'package:get/get.dart'; 

class PanelPage extends StatefulWidget {
  @override
  State<PanelPage> createState() {
    return _PanelPageState();
  }
}


class _PanelPageState extends State<PanelPage> {
  
  @override
  Widget build(context) {
    
    return 
    DefaultTabController(
      length: 4,
      
      
      child: OnBackPressed(
        perform: (){
          showDialog(context: context, builder:(context)=>  AlertDialog(title:Text('Do you want to sign out'),
          content: Row(children: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            }, child: Text('Yes')),
            TextButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>PanelPage()));
            }, child: Text('No'))
          ],)
          ,alignment: Alignment.center));
        },
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 239, 241, 193),
          drawer: Sidebar(),
          appBar: AppBar(
            elevation: 8,
            shadowColor: Colors.black,
        
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
           GridView.count(crossAxisCount: 3,childAspectRatio:(65/65) ,
          
          children: [
          
            DashboardTiles('Internal Sales','assets/images/sale64.png'),
            DashboardTiles('Booking and Sales','assets/images/order.png'),
            DashboardTiles('Export LC','assets/images/exportlc.png'),
            DashboardTiles('Export Document','assets/images/exportdc.png'),
            DashboardTiles('Sales Offer','assets/images/saleoffer.png'),
            DashboardTiles('Gift Approval','assets/images/gift.png')
          
          ],
          
          ),
        
         GridView.count(crossAxisCount: 3,childAspectRatio:(65/65) ,
          
          children: [
          
            DashboardTiles('Purchase Requisition','assets/images/purchasereq.png'),
            DashboardTiles('Purchase Order','assets/images/po.png'),
            DashboardTiles('Import LC','assets/images/importlc.png'),
            DashboardTiles('Proforma Invoice','assets/images/pi.png'),
            DashboardTiles('Supplier Payment','assets/images/bill.png')
          
          ],
          
          ),
         GridView.count(crossAxisCount: 3,childAspectRatio:(65/65) ,
          
          children: [
          
            DashboardTiles('Internal Requistion(SRR)','assets/images/SRR.png'),
            DashboardTiles('Transfer','assets/images/transfer.png'),
            DashboardTiles('Goods Recieve (GRR)','assets/images/grr.png'),
            DashboardTiles('Delivery Order','assets/images/delivery.png'),
            DashboardTiles('Delivery Chalan','assets/images/Dc.png'),
            
          
          ],
          
          ),
        Column()          
        
          ],
        )
            
        ),
      ),
    );
  }
}
