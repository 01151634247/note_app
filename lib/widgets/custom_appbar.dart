
import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class customappbar extends StatelessWidget{
  const customappbar({super.key, required this.title, required this.iconData, this.onPressed});
  final String title;
  final IconData iconData;
  final void Function()?onPressed;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(fontSize: 28),),
          customSearchIcon(
            onPress: onPressed,
            iconData: iconData,
          ),
        

        ],
      ),
    );
  }
}




