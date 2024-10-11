import 'package:flutter/material.dart';

class AllChatsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff292F3F),
      appBar: AppBar(
        backgroundColor: Color(0xff292F3F),
        title: Row(
          children: [
            Container(
                child: Image.asset("images/Image1.png"),
                height: 50,
                width: 50,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
            ),
            SizedBox(width: 15,),
            Text(
                "Mohamed Safwat",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
            ),
          ],
        ),
      ),
    );
  }

}