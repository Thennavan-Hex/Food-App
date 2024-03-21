import 'package:flutter/material.dart';
import 'login_page.dart'; // Importing the login page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // Remove the debug banner
      theme: ThemeData(
      ),
      home: LoginPage(), // Setting the login page as the home page
    );
  }
}
