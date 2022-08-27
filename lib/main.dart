import 'package:flutter/material.dart';
import 'package:deliveryapp/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appName = 'Delivery App';

    return MaterialApp(
      title: appName,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromARGB(255, 29, 33, 39),

        // Default Font
        fontFamily: 'Poppins',

        // Font Theme
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600),
          headline2: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
          bodyText1: TextStyle(fontSize: 14.0),
          bodyText2: TextStyle(fontSize: 10.0),
        ).apply(displayColor: Colors.white),
      ),
      home: MyHomePage(),
    );
  }
}
