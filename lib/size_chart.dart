import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeChart extends StatelessWidget{
SizeChart(this.shoeName,this.sizeList,{super.key});
final String shoeName;
final List sizeList;
@override
Widget build(context){
  return Container(
    height: 500,
    width: 300,
    child: Column(
      children: [
        Container(
          height: 50,
          width: double.infinity,
         decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(10))
         ),
          
          child:Center(
            child:Text(shoeName)
          ) ,
        ),
        const SizedBox(height: 10,),
        SizedBox(
          height: 350,
          child: Column(
            children: sizeList.map((size) {
              return Container(
                margin: EdgeInsets.only(top: 1.5),
                height: 35,
                width: double.infinity,
                decoration:
          BoxDecoration(
              color: Color.fromARGB(255, 236, 235, 228)
              ),
                child: 
                    Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children:
                    [
                      Text(size,style: GoogleFonts.ubuntu(fontSize:11,color:Color.fromARGB(255, 45, 78, 136)),),
                      Text('10',style: GoogleFonts.ubuntu(fontSize:11,color:const Color.fromARGB(255, 13, 26, 48)),),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.add,size: 16,color: const Color.fromARGB(255, 36, 214, 42),)),
                        
                          Text('1'),
                          IconButton(onPressed: (){}, icon: Icon(Icons.remove,size: 16,color:const Color.fromARGB(255, 218, 22, 8)))
                        ],
                      ),
                     
                      
                    ] ),
                  
               
                
              );
              
            }).toList()
          ),
        ),
      const Spacer(),
      SizedBox(
        width: double.infinity,
        height: 50,
        
        child: ElevatedButton(onPressed: (){}, 
        style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 24, 107, 3),fixedSize:Size(double.infinity, 10)),
        child:Text('Add',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
      ) ,
      const SizedBox(height: 1.5,) 
      ],
    ),
   
  );
  
}
}