
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubits/cubit/notes_cuibts/notes_cuibts_state.dart';
import 'package:note_app/model/note_model.dart';


class NotesCuibtsCubit extends Cubit<NotesCuibtsState> {
  NotesCuibtsCubit() : super(NotesCuibtsInitial());

   List<NoteModel>?note; 
   fetchAllNote(){
      var notesBox=Hive.box<NoteModel>(kNotesBooks);
        note=notesBox.values.toList();
     

   }




}
