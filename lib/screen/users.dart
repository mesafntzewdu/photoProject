import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:photo/component/card.dart';

class Users extends StatelessWidget {
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 800,
      child: Scaffold(
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemCount: 10,
            itemBuilder: (context, index) => GridCard()),
      ),
    );
  }
}
