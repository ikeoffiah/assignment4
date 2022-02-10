import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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

                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )),
              Positioned(
                top: 150,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
                  ),
                  child:Column(
                    children: [

                      SizedBox(height: 60,),
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
                              hintText: "First Name",
                              hintStyle: TextStyle(
                                color: Color(0xff2eB886),
                                fontSize: 20,
                              )

                          ),
                        ),
                      ),

                      SizedBox(height: 20,),

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
                              hintText: "Last Name",
                              hintStyle: TextStyle(
                                color: Color(0xff2eB886),
                                fontSize: 20,
                              )

                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
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
                              hintText: "Email",
                              hintStyle: TextStyle(
                                color: Color(0xff2eB886),
                                fontSize: 20,
                              )

                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
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
                              )

                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
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
                              hintText: "Confirm Password",
                              hintStyle: TextStyle(
                                color: Color(0xff2eB886),
                                fontSize: 20,
                              )

                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        margin:
                        EdgeInsets.only(left: 10, top: 0, bottom: 0, right: 10),
                        child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('By signing you agree to our', style: TextStyle(color: Color(0xff2eB886)),),

                            Text(' Terms of use'),



                          ],
                        ) ,
                      ),
                      Container(
                        margin:
                        EdgeInsets.only(left: 10, top: 0, bottom: 0, right: 10),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('and', style: TextStyle(color: Color(0xff2eB886)),),

                            Text(' privacy policy'),



                          ],
                        ) ,
                      )


                    ],
                  ),

                ),

              )
              ,
              Positioned(

                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Column(

                      children: [
                        Center(
                          child: Container(

                            padding: EdgeInsets.only(top: 40),
                            child: Text('Register', style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                        Center(
                          child: Container(

                            child: Text('Create your new account', style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,

                            ),),
                          ),
                        )
                      ],
                    ),

                  )),

              Container(


                margin: EdgeInsets.only(left: 10, top: 680.0, bottom: 0, right: 10),
                child:Row(

                  children: [


                    Expanded(

                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                        },style: TextButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28)
                            )
                        ), child: Padding(padding: EdgeInsets.all(10),
                          child: Text('Sign Up', style: TextStyle(
                              fontSize: 20, color: Colors.white
                          ),),)))
                  ],
                ) ,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, top: 750.0, bottom: 0, right: 10),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account ?"),

                      Text(' Log In', style: TextStyle(color: Color(0xff2eB886)),)
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
