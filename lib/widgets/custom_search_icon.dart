import 'package:flutter/material.dart';

class customSearchIcon extends StatelessWidget {
  const customSearchIcon({
    super.key,this.onPress, required this.iconData,
  });


   final IconData iconData;
   final void Function()?onPress;
   
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
         color: Colors.grey.shade800,
      ),
      // child: Icon(iconData,size: 28,)
      child: IconButton(
  iconSize: 28,
  icon: Icon(iconData),
  onPressed: onPress,
),
      
      );
  }
}