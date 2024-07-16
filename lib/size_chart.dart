import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeChart extends StatefulWidget{
SizeChart(this.shoeName,this.sizeList,{super.key});
final String shoeName;
final List sizeList;
List sizequan=[{'size':35,'quan':0,'check':false},{'size':36,'quan':0,'check':false},{'size':37,'quan':0,'check':false},{'size':38,'quan':0,'check':false},{'size':39,'quan':0,'check':false},{'size':40,'quan':0,'check':false},{'size':41,'quan':0,'check':false},{'size':42,'quan':0,'check':false}];
@override
  State<SizeChart> createState() {
    return _SizeChart();
  }
}
class _SizeChart extends State<SizeChart>{

int quantity=0;

@override
Widget build(context){
  print(widget.sizequan);
  return Container(
    height: 500,
    width: 310,
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
            child:Text(widget.shoeName)
          ) ,
        ),
        const SizedBox(height: 10,),
        SizedBox(
          height: 350,
          child: Column(
            children: [Container(
                    margin: EdgeInsets.only(top: 1.5),
                    height: 35,
                    width: double.infinity,
                    decoration:
              BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 253)
                  ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Size',style: TextStyle(color: Colors.pink,fontSize: 10),),
                        
                         Text('Available Quantity',style: TextStyle(color: Colors.pink,fontSize: 10),),
                         
                          Text('Quantity',style: TextStyle(color: Colors.pink,fontSize: 10),),
                         
                           Text('       ',style: TextStyle(color: Colors.pink,fontSize: 10),)
                      ],
                    )
            ),
              Column(
                children: widget.sizequan.map((sizequan) {
                  return Container(
                    margin: EdgeInsets.only(top: 1.5),
                    height: 35,
                    width: double.infinity,
                    decoration:
              BoxDecoration(
                  color: Color.fromARGB(255, 240, 240, 239)
                  ),
                    child: 
                        Row(
                        children:
                        [
                          const SizedBox(width: 30,),
                          Text(sizequan['size'].toString(),style: GoogleFonts.ubuntu(fontSize:11,color:Color.fromARGB(255, 45, 78, 136)),),
                          const SizedBox(width: 50,),
                          Text('100',style: GoogleFonts.ubuntu(fontSize:11,color:const Color.fromARGB(255, 13, 26, 48)),),
                          const SizedBox(width: 42,),
                          Container(
                            
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle
                            ),
                           
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.start,
                              children: [
                                IconButton(onPressed: (){
                                  sizequan['quan']++;
                                  setState(() => (),);
                                }, icon: Icon(Icons.add,size: 15,color: const Color.fromARGB(255, 36, 214, 42),)),
                              
                                Text(sizequan['quan'].toString(),style: TextStyle(fontSize: 10),),
                                IconButton(onPressed: (){
                                  sizequan['quan']--;
                                  setState(() => (),);
                                }, icon: Icon(Icons.remove,size: 15,color:const Color.fromARGB(255, 218, 22, 8)))
                              ],
                            ),
                          ),
                         
                        Checkbox(activeColor: const Color.fromARGB(255, 216, 30, 16),value: sizequan['check'], onChanged:(value){
                          
                          if (value==false){
                            sizequan['check']=false;
                            print('1');
                            
                          }
                          else { 
                            sizequan['check']=true;
                             print('0');
                          }
                          setState(
                            (){
                              
                              
                            }
                          );
                        }) 
                          
                        ] ),
                      
                   
                    
                  );
                  
                }).toList()
              ),
            ],
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