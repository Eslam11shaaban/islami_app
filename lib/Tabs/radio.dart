import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset("assets/images/radio.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xffB7935F),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                      "إذاعة القرآن الكريم",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(
              width: 250,
              child: Row(
                children: [
                  Expanded(
                      child: Icon(
                        Icons.arrow_left_rounded,
                        color: Color(0xffB7935F),
                        size: 80,
                      )),
                  Expanded(
                      child: Icon(
                        Icons.play_arrow_outlined,
                        color: Color(0xffB7935F),
                        size: 90,
                      )),
                  Expanded(
                      child: Icon(
                        Icons.arrow_right_rounded,
                        color: Color(0xffB7935F),
                        size: 80,
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}