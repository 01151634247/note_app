import 'package:note_app/model/note_model.dart';

abstract class NotesCuibtsState {}

class NotesCuibtsInitial extends NotesCuibtsState {}
class NotesCuibtsLoading extends NotesCuibtsState {}
class NotesCuibtsSuccess extends NotesCuibtsState {
  final List <NoteModel>notes;

  NotesCuibtsSuccess(this.notes);
}
class NotesCuibtsFaliure extends NotesCuibtsState {
  final String errMessage;

  NotesCuibtsFaliure(this.errMessage);
}