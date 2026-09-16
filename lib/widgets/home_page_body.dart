import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_item.dart';
import 'package:note_app/widgets/note_list_view.dart';


class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:12 ),
      child: Column(
        children: [
          customappbar(
            title: 'Notes',
            iconData:Icons.search,
          ),
          Expanded(
            child: noteListView(),
          ),
             
            
      
        ],
      ),
    );
  }
}



