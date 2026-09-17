import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, this.onTap,  this.isloading=false});
 final void Function()? onTap;
 final bool isloading;

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
        child: Center(
          child:isloading? CircularProgressIndicator(
            color: Colors.black,
          ):Text('Add',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}