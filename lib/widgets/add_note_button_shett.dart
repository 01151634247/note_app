
import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/custombutton.dart';

class addNoteButtonSheet extends StatelessWidget {
  const addNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 35,),
          CustomTextField(
            maxline: 1,
            hinttext: 'Title',
          ),
          const SizedBox(
            height: 15,
          ),
           CustomTextField(
            maxline: 5,
            hinttext: 'Des',
          
          ),
          const SizedBox(
            height: 80,
          ),
          Custombutton(),
            const SizedBox(
            height: 100,
          ),
          


        
          ],
        ),
      ),
    );
  }
}

