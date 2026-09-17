import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/model/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note)async{   
    emit(AddNoteLoading());
 try {
   var noteBox= Hive.box<NoteModel>(kNotesBooks);
    await noteBox.add(note);
    emit(AddNoteSuccess());
 } catch (e) {
  emit(AddNoteFailure(e.toString()));
 }
  }
}
