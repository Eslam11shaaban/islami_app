import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/my_theme.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<Hadeth>ahadethList =[];

  @override
  Widget build(BuildContext context) {
    if(ahadethList.isEmpty){
      loadHadethFile();
    }

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Image.asset("assets/images/hadeth_logo.png"),
          Divider(
            color: MyTheme.PrimaryColor,
            thickness: 2,
          ),
          Text("Hadeth name",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          Divider(
            color: MyTheme.PrimaryColor,
            thickness: 2,
          ),
          ahadethList.isEmpty?
              Center(child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ),)
              :
          Expanded(
            child: ListView.separated(
              itemBuilder:(context, index) {
                return Text(ahadethList[index].title);
              },
                separatorBuilder: (context,index){
                return Divider(
                  color: Theme.of(context).primaryColor,
                  thickness: 2,
                );
                },
              itemCount:ahadethList.length,
            ),
          )
        ],
      ),
    );
  }

  void loadHadethFile()async{
    String ahadethContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String>hadethList=ahadethContent.split('#\r\n');
    for(int i=0;i<hadethList.length;i++){
    List<String>hadethLines = hadethList[i].split('\n');
    String title = hadethLines[0];
    hadethLines.removeAt(0);
    Hadeth hadeth =Hadeth(title:title,content:hadethLines);
    ahadethList.add(hadeth);
    setState((){});

    }
  }
}
class Hadeth{
  String title;
  List<String>content;
  Hadeth({required this.title,required this.content});
}