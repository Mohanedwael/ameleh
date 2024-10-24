import 'package:flutter/material.dart';

import 'home.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.black,)
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                const Text("Log in to Chatbox",
                  style:TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight:FontWeight.bold,
                  ) ,
                ),
                const SizedBox(height: 40,),
                const Padding(
                  padding: EdgeInsets.all(25),
                  child: Text("Welcome back! Sign in using your social account or email to continue us",
                    style:TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight:FontWeight.bold,
                    ) ,
                  ),
                ),
                const SizedBox(height: 40,),
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
                const SizedBox(height: 40,),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText:  "Password",
                        helperStyle: TextStyle(
                            color: Color(0xff24786D)
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 40,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c)
                  {
                    return  const home();
                  }));
                },style: ElevatedButton.styleFrom(
                    fixedSize: const Size(400, 60),
                    backgroundColor: const Color(0xff24786D)
                ),
                    child: const Text("Login",
                      style: TextStyle(
                          color: Colors.white

                      ),
                    )),
                const SizedBox(height: 20,),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (c)
                        {
                          return  const home();
                        }));
                      },
                      child: const Text(" Forgot password?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
