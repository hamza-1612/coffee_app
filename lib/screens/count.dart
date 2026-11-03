import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}
int num=0;
class _CountState extends State<Count> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: Container(
   height: double.infinity,
   child: Row(
     children: [
       Image.asset('assets/images/b0568b8b587e270f89834eef1715683b.jpg',width: 100,),
       SizedBox(width: 20,),
       Text("$num"),
       IconButton(onPressed: (){
         setState(() {
           num--;
         });

       }, icon: Icon(Icons.remove)),
       IconButton(onPressed: (){
         setState(() {
           num++;
         });
       }, icon: Icon(Icons.add)),
     ],
   ),
 ),
    );
  }
}
