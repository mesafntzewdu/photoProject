import 'package:flutter/material.dart';
import 'package:photo/component/card.dart';

class Users extends StatelessWidget {
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 800,
      child: Scaffold(
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemCount: 10,
          itemBuilder: (context, index) => const GridCard(),
        ),
      ),
    );
  }
}
