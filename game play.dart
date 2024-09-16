import 'package:flutter/material.dart';
class gameplay extends StatelessWidget {
  const gameplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("XO",
         style:  TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontFamily: 'cursive',
            fontWeight: FontWeight.bold,

          ),
        ),
        leading: IconButton(
            onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text("Player1",
             style:
             TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: 'cursive',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Player2",
                style:
                TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: 'cursive',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(),
          Row(),
          Row(),
          Row(),
        ],
      ),
    );
  }
}
