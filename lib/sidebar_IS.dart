import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:niret_app/cart_page.dart';

class SideBar_IS extends StatelessWidget{
  SideBar_IS(this.itemInfo,this.total,{super.key});
  int total;
final List<Map<String,Object>> itemInfo;  
@override  
Widget build(context){
  return Drawer(
    backgroundColor: const Color.fromARGB(255, 11,16,70),
    width:250
     ,
    child: ListView(
      children:[ UserAccountsDrawerHeader(accountName: Text('Minhaz Uddin Ahmed',style:GoogleFonts.roboto(color:Colors.black,fontSize:16,fontWeight:FontWeight.bold ) ,),
       accountEmail: Text('minhazmashfi326@gmail.com',style:GoogleFonts.roboto(color:Colors.black,fontSize:16,fontWeight:FontWeight.bold )),
       decoration: BoxDecoration(color: Colors.white),
       ),
       ListTile(
        title: Text('My Cart',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
        trailing: Icon(Icons.shopping_cart_sharp,color: Colors.white,),
        
        onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage(itemInfo,total)));
        },

       ),
        ListTile(
        title: Text('Gift',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
        trailing: Icon(Icons.card_giftcard,color: Colors.white),
        onTap: (){
          
        },

       ),
        ListTile(
        title: Text('Order Status',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
        trailing: Icon(Icons.task_sharp,color: Colors.white),
        onTap: (){
          
        },

       )
      ],
    )

  );
}
}