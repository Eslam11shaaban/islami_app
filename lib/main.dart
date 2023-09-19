import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/page%20one%20quran/sura%20details.dart';

import 'Home screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false ,
      initialRoute: HomeScreen.routeName ,
      routes:{

        HomeScreen.routeName:(context) => HomeScreen(),
        SuraDetails.routeName:(context) => SuraDetails(),
      },
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,



    );

  }
}