import 'package:flutter/material.dart';
import 'package:photo/component/segmented_button.dart';
import 'package:photo/screen/add_user.dart';
import 'package:photo/screen/manage.dart';
import 'package:photo/screen/users.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Widget selectedScreen = AddUser();

  void getScreen(String x) {
    switch (x) {
      case '1':
        setState(() {
          selectedScreen = AddUser();
        });
        break;
      case '2':
        setState(() {
          selectedScreen = Users();
        });
        break;
      case '3':
        setState(() {
          selectedScreen = ManageUser();
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SegmentedButtons(
              getScreen: (val) => getScreen(val),
            ),
          ),
          //The other pages are loaded in here
          Expanded(child: selectedScreen)
        ],
      ),
    );
  }
}
