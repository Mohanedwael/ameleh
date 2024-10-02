
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gameplayScreen extends StatefulWidget{
  @override
  State<gameplayScreen> createState() => _gameplayScreenState();
}

class _gameplayScreenState extends State<gameplayScreen> {
  int xScore = 0, oScore = 0;

  List board = ["", "","","","","","","",""];

  bool xTurn = true;

  int click  = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8fbee8),
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios,color: Colors.white,)
        ),
        title: Text("XO",
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
      ),
      backgroundColor: Color(0xff8fbee8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text("Player 1",
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text("Player 2",
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text("$xScore",
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text("$oScore",
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
            ],
          ),
          SizedBox(height: 120,),
          Flexible(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3
              ),
                itemBuilder: (context, idx){
                  return InkWell(
                    onTap: (){
                      if(xTurn && board[idx]==""){
                        click++;
                        board[idx]="X";
                        xTurn = false;
                      }
                      else if(!xTurn && board[idx]==""){
                        click++;
                        board[idx]="O";
                        xTurn = true;
                      }
                      if(board[0]==board[1]&&board[1]==board[2]&&board[0]!=""
                      ||board[3]==board[4]&&board[4]==board[5]&&board[3]!=""
                      ||board[6]==board[7]&&board[7]==board[8]&&board[6]!=""
                      ||board[0]==board[3]&&board[3]==board[6]&&board[0]!=""
                      ||board[1]==board[4]&&board[4]==board[7]&&board[1]!=""
                      ||board[2]==board[5]&&board[5]==board[8]&&board[2]!=""
                      ||board[0]==board[4]&&board[4]==board[8]&&board[0]!=""
                      ||board[2]==board[4]&&board[4]==board[6]&&board[2]!=""
                      ){
                        if(!xTurn){
                          xScore++;
                        }
                        else{
                          oScore++;
                        }
                        board = ["", "","","","","","","",""];
                        click=0;
                      }
                      if(click == 9){
                        board = ["", "","","","","","","",""];
                        click=0;
                      }
                      setState(() {
            
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black,width: 5)
                      ),
                      child: Center(
                        child: Text(board[idx],
                          style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold, color: Colors.black),),
                      ),
                    ),
                  );
                },
                itemCount: 9,
            ),
          ),
        ],
      ),
    );
  }
}