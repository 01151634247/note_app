import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, this.onTap});
 final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.cyan,
        ),
        width: MediaQuery.sizeOf(context).width,
        height: 45,
        child: Center(child: Text('Add',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}