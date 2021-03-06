import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       leading: Icon(
         Icons.menu
       ),
       title: Text(
         'First App'
       ),
       actions: [
         IconButton(onPressed: (){
           print('Hello');
         }, icon: Icon(Icons.search))
       ],
       centerTitle: true,
     ),
     body: Column(
       children: [
         Container(
           width: 200,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
           ),
           clipBehavior: Clip.antiAliasWithSaveLayer,
           child: Stack(
             alignment: AlignmentDirectional.bottomCenter ,
             children: [
               Image(image: NetworkImage(
                 'data:image/jpeg;base64,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'
               ),),
               Container(
                 color: Colors.black.withOpacity(0.5),
                 width: double.infinity,
                 padding: EdgeInsets.symmetric(
                   vertical: 10,
                 ),
                 child: Text(
                   'Flower',textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 20,
                     color: Colors.white
                   ),
                 ),
               ),
             ],
           ),
         )
       ],
     ),
   );
  }
}