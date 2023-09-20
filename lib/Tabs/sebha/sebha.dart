import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  String name="سبحان الله";// Initial counter value
  void incrementCounter() {
    setState(() {});
    if (counter < 33) {
      counter += 1; // Increment the counter by 1
    } else {
      if(name=="سبحان الله"){
        counter = 0;
        name="الحمد لله";// Reset the counter to zero
      }
      else if(name=="الحمد لله"){
        counter = 0;
        name="الله اكبر";
      }
      else{
        counter = 0;
        name="سبحان الله";
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Image.asset("assets/images/sebha_img.png",height:220,),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Text("عدد التسبيحات",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffB7935F),
                    borderRadius: BorderRadius.circular(15)),
                width: 60,
                height: 60,
                child: Center(child: Text('$counter',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: ElevatedButton(onPressed: (){incrementCounter();}, child:Text(name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(fixedSize: Size(160, 50),elevation:5,backgroundColor: Color(0xffB7935F),shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(15))),),
          )
        ],
      ),
    );
  }
}