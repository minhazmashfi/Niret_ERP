import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:niret_app/login_screen.dart';

class Sidebar extends StatelessWidget{
  Sidebar({super.key});

  @override 
  Widget build(context){
    return Drawer(
      backgroundColor: Color.fromARGB(255, 215, 215, 235),
      child: ListView(
        children:  [
          UserAccountsDrawerHeader(accountName:Text('Minhaz Uddin Ahmed'), accountEmail:Text('minhazmashfi326@gmail.com')
          ,
          decoration: const BoxDecoration(
            color:Color.fromARGB(255, 24, 28, 212)
          ),
        
          currentAccountPicture:CircleAvatar(
            child: ClipOval(child: Image.asset('assets/images/avatar.png',fit: BoxFit.cover,))
            ,
          ) 
          ),
        ListTile(
            title: const Text('Account Information'),
            leading: Icon(Icons.account_box_rounded),
            onTap: (){},
            
          ),
          ListTile(
            title: Text('Sign Out'),
            leading: Icon(Icons.logout_rounded),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
            },
          )
          
        ],
      ),
    );

  }
}