import 'package:flutter/material.dart';
import 'package:untitled/flutter%20cs/PRO%201.dart';

import 'game play.dart';
class btn extends StatelessWidget {
  const btn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text("btn",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontFamily: 'cursive',
            fontWeight: FontWeight.bold,

          ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute
                (builder: (context){
                  return gameplay();
              }));
            },
                child: Text("Enter ID",
                  style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: 'cursive',
                  fontWeight: FontWeight.bold,

                ),))
          ],
        ),
      ),
    );
  }
}
