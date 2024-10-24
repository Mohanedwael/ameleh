import 'package:flutter/material.dart';
import 'package:frist_file/corsesmica/cahtaap/sigup.dart';

import 'login.dart';

class  scaendscreen extends StatefulWidget {
  const scaendscreen({super.key});

  @override
  State<scaendscreen> createState() => _scaendscreenState();
}

class _scaendscreenState extends State<scaendscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container(
          decoration:const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff1A1A1A),
                Color(0xff43116A),
                Color(0xff1A1A1A),
                Color(0xff1A1A1A),
                Color(0xff1A1A1A),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,

            )
          ),
          child:Column(
            children: [
              const SizedBox(height: 50,),
              const Center(
                  child: Text("chatbox",style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                    letterSpacing: 4,
                      fontWeight: FontWeight.bold

                  ),)),
              const SizedBox(height: 50,),
              const Padding(
                padding: EdgeInsets.only(left: 12.0,top:0.0 ,right:0.0 ,bottom:0.0 ),
                child: Text("Connect friends easily & quickly",style: TextStyle(
                    color: Colors.white,
                    fontSize: 65,
                    fontFamily: 'Caros',
                    letterSpacing: 4,
                    fontWeight: FontWeight.bold

                )),
              ),
              const SizedBox(height: 40,),
              const Padding(
                padding: EdgeInsets.only(left: 12.0,top:0.0 ,right:0.0 ,bottom:0.0 ),
                child: Text("Our chat app is the perfect way to stay connected with friends and family.",style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Caros',
                    fontWeight: FontWeight.bold

                )),
              ),
              const SizedBox(height: 80,),
             ElevatedButton(onPressed:(){

               Navigator.push(context, MaterialPageRoute(builder: (c)
               {
                 return  const signup();
               }));
             },style: ElevatedButton.styleFrom(
               fixedSize: const Size(400, 60)
             ),
                 child: const Text("Sign up Withn mail",
                 style: TextStyle(
                   color: Colors.black,
                  fontSize: 20
                 ),
                 )),
              const SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c)
                  {
                    return  const login();
                  }));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Existing account?",
                    style: TextStyle(
                     color: Colors.white
                    ),
                    ),
                    Text(" Log in",
                      style: TextStyle(
                          color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                  ],
                )
              )

             
            ],
          ),
        ),
      ),
    );
  }
}
