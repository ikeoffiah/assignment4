import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignment4/login.dart';
import 'package:assignment4/signup.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/leaf.jpg'),
                            fit: BoxFit.cover
                        )
                    ),
                  )),

              Container(
                margin:
                EdgeInsets.only(left: 10, top: 100.0, bottom: 0, right: 10),
                child:Row(

                  children: [


                    Expanded(
                        child: Text("The best app for your plant", style: TextStyle(fontSize: 80, color: Colors.white
                        ),))
                  ],
                ) ,
              ),

              Container(

                margin:
                EdgeInsets.only(left: 10, top: 520.0, bottom: 0, right: 10),
                child:Row(

                  children: [


                    Expanded(
                      
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                        },style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28)
                          )
                        ), child: Padding(padding: EdgeInsets.all(10),
                        child: Text('Sign Up', style: TextStyle(
                            fontSize: 20, color: Color(0xff2eB886)
                        ),),)))
                  ],
                ) ,
              ),
              Container(

                margin:
                EdgeInsets.only(left: 10, top: 600.0, bottom: 0, right: 10),
                child:Row(

                  children: [


                    Expanded(

                        child: TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },style: TextButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28)
                            )
                        ), child: Padding(padding: EdgeInsets.all(10),
                          child: Text('Login', style: TextStyle(
                              fontSize: 20, color: Colors.white
                          ),),)))
                  ],
                ) ,
              )

            ],
          ),
        ),
      )
      ,// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
