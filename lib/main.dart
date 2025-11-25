
import 'package:flutter/material.dart';

import 'screen/welcome_screen.dart';

void main() {

  runApp( MyApp());

}

class MyApp extends StatelessWidget {

   MyApp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'جمالك',

      theme: ThemeData(

        primarySwatch: Colors.pink,

      ),

      home:  WelcomeScreen(),

      debugShowCheckedModeBanner: false,

    );

  }

}

