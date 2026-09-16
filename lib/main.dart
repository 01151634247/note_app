import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/pages/home_page.dart';

void main() async{
  await Hive.initFlutter();
 await Hive.openBox(kNotesBooks);
 //Hive.registerAdapter<NoteModel>(AdaptorModel);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily:'Poppins',
      ),
      home:const HomePage(),
     
    );
  }
}
