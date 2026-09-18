import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/notes_cuibts/notes_cuibts_cubit.dart';
import 'package:note_app/widgets/add_note_button_shett.dart';
import 'package:note_app/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCuibtsCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36),
              ),
              context: context,
              builder: (context) {
                return addNoteButtonSheet();
              },
            );
          },
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.add),
        ),
        body: HomePageBody(),
      ),
    );
  }
}
