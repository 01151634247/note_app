import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/notes_cuibts/notes_cuibts_cubit.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_item.dart';
import 'package:note_app/widgets/note_list_view.dart';


class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  void initState() {
   BlocProvider.of<NotesCuibtsCubit>(context).fetchAllNote();
    super.initState();
  }
  
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:12 ),
      child: Column(
        children: [
          customappbar(
            title: 'Notes',
            iconData:Icons.search,
          ),
          Expanded(
            child: noteListView(),
          ),
             
            
      
        ],
      ),
    );
  }
}



