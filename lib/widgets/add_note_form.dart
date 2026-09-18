import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/add_note/add_note_cubit.dart';
import 'package:note_app/cubits/cubit/add_note/add_note_state.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/custombutton.dart';

class addNoteForm extends StatefulWidget {
  const addNoteForm({super.key});

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

class _addNoteFormState extends State<addNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: Column(
        children: [
          SizedBox(height: 35),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            maxline: 1,
            hinttext: 'Title',
          ),
          const SizedBox(height: 15),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            maxline: 5,
            hinttext: 'Des',
          ),
          const SizedBox(height: 40),
          BlocBuilder<AddNoteCubit,AddNoteState>(
            builder: (context, state) {
              return Custombutton(
                isloading: state is AddNoteLoading?true:false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    BlocProvider.of<AddNoteCubit>(context).addNote(
                      NoteModel(
                        title: title!,
                        subTitle: subtitle!,
                        date: DateTime.now().toString(),
                        color: Colors.amber.value,
                      ),
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
