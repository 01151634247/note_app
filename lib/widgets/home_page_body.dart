import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:12 ),
      child: Column(
        children: [
          customappbar(),
        ],
      ),
    );
  }
}