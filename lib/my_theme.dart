import 'package:flutter/material.dart';

class MyTheme{
  static Color PrimaryColor=Color(0xffB7935F);
  static Color blackColor=Color(0xff242424);
  static ThemeData lightTheme=ThemeData(
      scaffoldBackgroundColor:Colors.transparent,
      textTheme: TextTheme(
          bodyLarge:TextStyle
            (color:Color(0xff242424),fontWeight: FontWeight.bold,fontSize: 30)
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: MyTheme.PrimaryColor,size: 30),
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
        backgroundColor: Color(0xffB7935F),
      )
  );
  static ThemeData darkTheme=ThemeData();

}