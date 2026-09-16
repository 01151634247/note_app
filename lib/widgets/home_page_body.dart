import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customappbar(),
      ],
    );
  }
}