import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/notes_cuibts/notes_cuibts_cubit.dart';
import 'package:note_app/cubits/cubit/notes_cuibts/notes_cuibts_state.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widgets/custom_item.dart';

class noteListView extends StatelessWidget {
  const noteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCuibtsCubit, NotesCuibtsState>(
      builder: (context, state) {
        List<NoteModel>notes=BlocProvider.of<NotesCuibtsCubit>(context).note??[];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount:notes.length ,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 13),
                child: noteItem(
                  note: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
