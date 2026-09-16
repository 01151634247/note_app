
import 'package:flutter/material.dart';

class customappbar extends StatelessWidget{
  const customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Notes',style: TextStyle(fontSize: 25),),

          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
               color: Colors.grey.shade800,
            ),
            child: Icon(Icons.search,size: 25,)),
      
        ],
      ),
    );
  }


}