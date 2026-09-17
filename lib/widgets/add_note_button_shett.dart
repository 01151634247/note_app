import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/cubit/add_note_cubit.dart';
import 'package:note_app/widgets/add_note_form.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/custombutton.dart';

class addNoteButtonSheet extends StatefulWidget {
  const addNoteButtonSheet({super.key});

  @override
  State<addNoteButtonSheet> createState() => _addNoteButtonSheetState();
}

class _addNoteButtonSheetState extends State<addNoteButtonSheet> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
               if(state is AddNoteFailure){
                   print('failed');
                   state.errMessage;
               }else if(state is AddNoteSuccess){
                Navigator.pop(context);
               }
          },
          builder: (context, state) {
            return  ModalProgressHUD(
              inAsyncCall:state is AddNoteLoading?true:false,
              child: addNoteForm());
          },
        ),
      ),
    );
  }
}
