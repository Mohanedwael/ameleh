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
        centerTitle: true,
        leading: IconButton(
            onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),

      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text("Player1",
                               style:
                               TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontFamily: 'cursive',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text("Player2",
                    style:
                    TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontFamily: 'cursive',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text("0",
                    style:
                    TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontFamily: 'cursive',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text("0",
                    style:
                    TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontFamily: 'cursive',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 150,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.black,width:10)
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 150,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.black,width:10)
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 150,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.black,width:10)
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 150,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.black,width:10)
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 150,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.black,width:10)
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 150,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.black,width:10)
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 150,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.black,width:10)
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 150,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.black,width:10)
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 150,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.black,width:10)
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
