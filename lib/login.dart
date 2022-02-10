import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  int _value =1;



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
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Color(0xff2eB886),
                                fontSize: 20,
                              ),
                              suffixIcon: GestureDetector(onTap: (){
                                    setState(() {
                                      _obscureText=!_obscureText;
                                    });
                              },
                              child: Icon(
                                _obscureText ? Icons.visibility :Icons.visibility_off
                              , color:Colors.green ,),)

                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Radio(value: 1, groupValue: _value, onChanged: (value){
                              setState(() {
                               _value=value as int;
                              });
                            },
                            activeColor: Color(0xff2eB886),),
                            Text('Remember Me'),
                            SizedBox(width: 100,),
                            Text('Forgot password?', style: TextStyle(
                              color: Color(0xff2eB886)
                            ),)
                          ],
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

                  )),

              Container(


                margin: EdgeInsets.only(left: 10, top: 680.0, bottom: 0, right: 10),
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
              ),
             Container(
                 margin: EdgeInsets.only(left: 10, top: 750.0, bottom: 0, right: 10),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
             children: [
             Text("Don't have an account ?"),

              Text(' Sign Up', style: TextStyle(color: Color(0xff2eB886)),)
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
