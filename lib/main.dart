import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubits/cubit/add_note_cubit.dart';
import 'package:note_app/model/adaptor_model.dart';
import 'package:note_app/model/note_model.dart';

import 'package:note_app/pages/home_page.dart';
import 'package:note_app/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
   Hive.registerAdapter(AdaptorModel());
  await Hive.openBox<NoteModel>(kNotesBooks);
  Bloc.observer=SimpleBlocObserver();
  
  

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const HomePage(),
      
    );
  }
}
