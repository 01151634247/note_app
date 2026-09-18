import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/notes_cuibts/notes_cuibts_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widgets/edit_note_view.dart';

class noteItem extends StatelessWidget {
  const noteItem({super.key, required this.note});
   
   final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return  EditNoteView(
          noteModel: note,
          );
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 20,bottom:20,left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title,style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
              subtitle:Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 16),
                child: Text(note.subTitle,style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 23),),
              ),
              trailing: IconButton(onPressed: 
              (){
              note.delete();
              BlocProvider.of<NotesCuibtsCubit>(context).fetchAllNote();

              }, icon:Icon(Icons.delete,color: Colors.black,size: 35,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right:30),
              child: Text(note.date,style: TextStyle(
               color: Colors.black.withOpacity(0.4),
               // fontFamily: 'regular',
                fontSize: 18,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
