import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopupRoute<T> extends PageRoute<T>{

  PopupRoute({
    required WidgetBuilder builder, 
    required RouteSettings settings,
    bool FullScreenDialogue=false,

  }): _builder= builder,
  super(settings: settings,fullscreenDialog: FullScreenDialogue);
  final WidgetBuilder _builder;

@override 
bool get opaque => false;
@override
bool get barrierDismissible => true; 
@override
Color get barrierColor => Colors.black;

@override
bool get maintainState => true; 

@override 
Duration get transitionDuration => Duration(milliseconds: 500);



@override 
Widget buildTransitions (BuildContext context, Animation <double> animation,
Animation<double> secondaryAnimation,Widget child){
  return child;

}

@override 
Widget buildPage (BuildContext context, Animation <double> animation,
Animation<double> secondaryAnimation){
  return _builder(context);
}

@override 
String get barrierLabel=> 'Item size pop up';
}