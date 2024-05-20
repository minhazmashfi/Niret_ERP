import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class CartPage extends StatefulWidget{
  @override
  State<CartPage> createState(){
    return _CartPage();
  }
}
class _CartPage extends State<CartPage>{
  @override
  Widget build(context){
    return const Column(children:[Text('This is the cart page')]);
  }

}