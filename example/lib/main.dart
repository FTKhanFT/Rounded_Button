import 'package:flutter/material.dart';
import 'package:rounded_button/rounded_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Color primaryColor = Color(0xFFAC00FF);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Rounded Button
              RoundedButton(
                primaryColor: primaryColor,
                text: 'RoundedButton',
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              RoundedButton(
                primaryColor: primaryColor,
                borderRadius: BorderRadius.circular(10.0),
                text: 'RoundedButton',
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              RoundedButton(
                primaryColor: primaryColor,
                text: 'RoundedButton',
                onPressed: () {},
                icon: Icon(
                  Icons.access_alarm_rounded,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RoundedButton(
                primaryColor: primaryColor,
                borderRadius: BorderRadius.circular(10.0),
                text: 'RoundedButton',
                onPressed: () {},
                icon: Icon(
                  Icons.remove_red_eye_rounded,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
