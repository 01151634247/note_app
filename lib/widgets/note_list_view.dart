
import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_item.dart';

class noteListView extends StatelessWidget {
  const noteListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(bottom:13 ),
          child: noteItem(),
        );
      }),
    );
  }
}
