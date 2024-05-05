import 'package:flutter/material.dart';
import 'package:photo/screen/dashboard.dart';

import 'theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: const Dashboard(),
    );
  }
}
