
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, required this.hinttext, required this.maxline});

  final String hinttext;
  final int maxline;
 
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxline,
      
      decoration: InputDecoration(
        
        hintText: hinttext,
        
        
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.cyan,
          ),       
        ),
        focusedBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.cyan,
          ), 
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.cyan,
          ),
          
          
        ),
        
        
      ),
      
      
    );
  }
}