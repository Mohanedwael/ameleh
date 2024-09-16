import 'package:flutter/material.dart';
class messi extends StatelessWidget {
  const messi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text("ID",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontFamily: 'serif',
                fontWeight: FontWeight.bold,
                letterSpacing: 4,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text("ID: 05616414612561328\n"
                        "Name: Mohaned weal\n"
                        "address: egypt",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontFamily: 'cursive',
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        )
    );
  }
}