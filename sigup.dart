import 'package:flutter/material.dart';

import 'login.dart';
class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
          onPressed: (){
         Navigator.pop(context);
       },
       icon: const Icon(Icons.arrow_back,color: Colors.black,)
        ),
        ),
        body:Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text("Sign up with Email",
                      style:TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight:FontWeight.bold,
                      ) ,
                      ),
                    ),
                    const SizedBox(height: 30,),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text("Get chatting with friends and family today by signing up for our chat app!",
                        style:TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight:FontWeight.bold,
                        ) ,
                      ),
                    ),
                    const SizedBox(height: 50,),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText:  "Your name",
                          helperStyle: TextStyle(
                            color: Color(0xff24786D)
                          )
                        ),
                      ),
                    ),
                    const SizedBox(height: 50,),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText:  "your email",
                            helperStyle: TextStyle(
                                color: Color(0xff24786D)
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 50,),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText:  "password",
                            helperStyle: TextStyle(
                                color:Color(0xff24786D)
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 50,),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText:  "Confirm password",
                            helperStyle: TextStyle(
                                color: Color(0xff24786D)
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),

                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                           ElevatedButton(onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (c)
                             {
                               return  const login();
                             }));
                           },style: ElevatedButton.styleFrom(
                               fixedSize: const Size(400, 60),
                             backgroundColor: Color(0xff24786D)
                           ),
                               child: const Text("Create an account",
                               style: TextStyle(
                                 color: Colors.white

                               ),
                               ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
