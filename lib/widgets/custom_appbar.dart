
import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class customappbar extends StatelessWidget{
  const customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Notes',style: TextStyle(fontSize: 28),),
          customSearchIcon(),
        

        ],
      ),
    );
  }
}




