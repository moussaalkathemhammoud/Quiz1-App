import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class FlipCoin extends StatefulWidget {
  const FlipCoin({super.key});

  @override
  State<FlipCoin>createState(){
  return _FlipCoin();
}}
class _FlipCoin extends State<FlipCoin>{
   String coin ="❓";
   int hcount =0;
   int tcount = 0;
   var sides =["🙂","🐒"];
   void flipCoin(){
     setState(() {
      coin = sides[Random().nextInt(2)];
      if(coin == "🙂")
        hcount++;
      else
        tcount++;
     });
   }

   void reset(){
     setState(() {
       hcount =0;
       tcount = 0;
       coin ="❓";
     });
   }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.blue ,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(coin,style: TextStyle(fontSize: 100),),
            SizedBox(height:30),
            Row(mainAxisSize: MainAxisSize.min,
              children: [
                Text("Heads : $hcount",style: TextStyle(fontSize: 20,color: Colors.white)),
                SizedBox(width:20),
                Text("|",style: TextStyle(fontSize: 20,color: Colors.white),),
                SizedBox(width: 20),
                Text("Tails : $tcount",style: TextStyle(fontSize: 20,color: Colors.white))
              ],
            ),
            SizedBox(height:30),
            OutlinedButton(onPressed:flipCoin, child:Text("Flip Coin",style: TextStyle(color: Colors.black),),style: OutlinedButton.styleFrom(backgroundColor: Colors.white),),
            OutlinedButton(onPressed:reset, child:Text("Reset", style: TextStyle(color: Colors.white),),style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.white),),)
          ],
        ),
      ),
    );
    }
}
