import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/notes_cuibts/notes_cuibts_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});


   final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState(

  );
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
   String? title ,subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.symmetric(horizontal:12 ),
      child: Column(
        children: [
          customappbar(
            onPressed: () {
              widget.noteModel.title=title??widget.noteModel.title;
               widget.noteModel.subTitle=subtitle??widget.noteModel.subTitle;
               widget.noteModel.save();
               BlocProvider.of<NotesCuibtsCubit>(context).fetchAllNote();
       Navigator.pop(context);
            
            },
            title: 'Edit',
            iconData: Icons.check,
          ),
           const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onChanged: (value) {
              title=value;
              
            },
            hinttext: widget.noteModel.title, maxline:1),
          const SizedBox(
            height: 20,
          ),
            CustomTextField(
              onChanged: (value) {
              subtitle=value;
              
            },
              hinttext:widget.noteModel.subTitle, maxline:5),
          
        ],
      ),
    );
  }
}