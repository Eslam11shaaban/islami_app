import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/page%20one%20quran/sura%20model.dart';

class SuraDetails extends StatefulWidget {
  const SuraDetails({super.key});

  static const String routeName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}
class _SuraDetailsState extends State<SuraDetails> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty){
      loadFiles(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill,
          )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
        ),
        body:Padding(
          padding: const EdgeInsets.all(12),
          child: Card(
            elevation: 12,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(color: MyTheme.PrimaryColor)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(indent: 40,endIndent: 40,color: MyTheme.PrimaryColor,thickness: 2,),
                  itemBuilder: (context, index) {
                    return Center(
                      child: Text(verses[index],textAlign: TextAlign.center,style: TextStyle(color: Colors.black87,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),),
                    );
                  },
                  itemCount:verses.length ),
            ),
          ),
        ),
      ),
    );
  }

  loadFiles(int index) async {
    String Files =
    await rootBundle.loadString("assets/Files/${index + 1}.txt");
    List<String>lines=Files.split("\n");
    print(lines);
    verses=lines;
    setState((){});
  }
}