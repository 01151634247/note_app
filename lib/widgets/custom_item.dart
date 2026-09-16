import 'package:flutter/material.dart';

class noteItem extends StatelessWidget {
  const noteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            subtitle:Text('Build your career with Ayman Mohamed',style: TextStyle(color: Colors.black.withOpacity(0.3),fontSize: 23),),
            trailing: IconButton(onPressed: (){}, icon:Icon(Icons.delete,color: Colors.black,size: 35,)),
          ),
          Text('Sebtember 2026',style: TextStyle(
           color: Colors.black.withOpacity(0.3),
           // fontFamily: 'regular',
            fontSize: 23,
          ),),

        ],
      ),

    );
  }
}
