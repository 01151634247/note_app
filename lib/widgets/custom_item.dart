import 'package:flutter/material.dart';
import 'package:note_app/widgets/edit_note_view.dart';

class noteItem extends StatelessWidget {
  const noteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 20,bottom:20,left: 16),
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text('Flutter Tips',style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
              subtitle:Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 16),
                child: Text('Build your career with Ayman Mohamed',style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 23),),
              ),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.delete,color: Colors.black,size: 35,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right:30),
              child: Text('Sebtember 2026',style: TextStyle(
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
