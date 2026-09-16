import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.symmetric(horizontal:12 ),
      child: Column(
        children: [
          customappbar(
            title: 'Edit',
            iconData: Icons.check,
          ),
           const SizedBox(
            height: 20,
          ),
          CustomTextField(hinttext: 'Title', maxline:1),
          const SizedBox(
            height: 20,
          ),
            CustomTextField(hinttext: 'Des', maxline:5),
          
        ],
      ),
    );
  }
}