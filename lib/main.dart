import 'package:flutter/material.dart';
import '/screens/main/main_screen.dart';

void main() {
  runApp(const ResponsiveUiApp());
}

class ResponsiveUiApp extends StatelessWidget {
  const ResponsiveUiApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}
