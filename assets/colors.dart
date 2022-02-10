import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
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
                    height: 350,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/leaf.jpg'),
                            fit: BoxFit.cover
                        )
                    ),
                  )),
              Positioned(
                  left: 20,
                  top: 20,
                  child: Container(

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.chevron_left,
                      ),
                      iconSize: 30,
                      color:  Color(0xff2eB886),

                      onPressed: () {},
                    ),
                  )),
              Positioned(
                top: 300,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
                  ),
                  child:Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 40),
                        child: Text('Welcome back', style: TextStyle(
                            color: Color(0xff2eB886),
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('Login to your account', style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold

                        ),),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        decoration: BoxDecoration(
                          color: Colors.greenAccent[100],
                          borderRadius: BorderRadius.circular(30),


                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email/Username",
                              hintStyle: TextStyle(
                                color: Color(0xff2eB886),
                                fontSize: 20,
                              )

                          ),
                        ),
                      ),

                      SizedBox(height: 30,),
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        decoration: BoxDecoration(
                          color: Colors.greenAccent[100],
                          borderRadius: BorderRadius.circular(30),


                        ),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Color(0xff2eB886),
                                fontSize: 20,
                              ),
                              suffixIcon: GestureDetector(onTap: (){

                              },)

                          ),
                        ),
                      )
                    ],
                  ),

                ),
              )
              ,
              Positioned(

                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/butter.png',height: 200,width: 200,)
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
