import 'package:flutter/material.dart';
import 'package:islami_app/Tabs/ahadeth/ahdeth.dart';
import 'package:islami_app/Tabs/quran/quran.dart';
import 'package:islami_app/Tabs/radio/radio.dart';
import 'package:islami_app/Tabs/sebha/sebha.dart';
import 'package:islami_app/Tabs/settings/settings.dart';
import 'package:islami_app/my_theme.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Image.asset("assets/images/background.png",
            width: double.infinity,
            fit: BoxFit.cover,),
          Scaffold(
            appBar: AppBar(
              title: Text("Islami",style:Theme.of(context).textTheme.bodyLarge),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value){
                index=value;
                setState(() {});
              },
              type: BottomNavigationBarType.shifting,
              items: [
                BottomNavigationBarItem(icon: const ImageIcon(AssetImage("assets/images/quran.png")),label: "quran",backgroundColor:MyTheme.PrimaryColor),
                BottomNavigationBarItem(icon: const ImageIcon(AssetImage("assets/images/sebha.png")),label: "sebha",backgroundColor:MyTheme.PrimaryColor),
                BottomNavigationBarItem(icon: const ImageIcon(AssetImage("assets/images/radio.png")),label: "radio",backgroundColor:MyTheme.PrimaryColor),
                BottomNavigationBarItem(icon: const ImageIcon(AssetImage("assets/images/ahadeth.png")),label: "ahadeth",backgroundColor:MyTheme.PrimaryColor),
                BottomNavigationBarItem(icon:Icon(Icons.settings),label: "settings ",backgroundColor:MyTheme.PrimaryColor),
              ],),
            body:tabs[index] ,
          ),
        ]
    );
  }
  List<Widget>tabs=[QuranTab(),SebhaTab(),RadioTab(),AhadethTab(),SettingsTab(),];
}