
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, required this.hinttext, required this.maxline, this.onSaved});

  final String hinttext;
  final int maxline;
  final void Function(String?)? onSaved;
 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
       if(value?.isEmpty ?? true){
        return 'value is required';
       }
      },
      onSaved:onSaved ,
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