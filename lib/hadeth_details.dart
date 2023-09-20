import 'package:flutter/material.dart';
import 'package:islami_app/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  const HadethDetails({super.key});
  static const String routeName="HadethDetails";
  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as ahadethModel;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill,
            )),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title,
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
                  side: BorderSide(color:Color(0xffB7935F))
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(indent: 40,endIndent: 40,color: Color(0xffB7935F),thickness: 2,),
                    itemBuilder: (context, index) {
                      return Center(
                        child: Text(args.content[index],textAlign: TextAlign.center,style: TextStyle(color: Colors.black87,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),),
                      );
                    },
                    itemCount:args.content.length ),
              ),
            ),
          ),
        ));}
}
