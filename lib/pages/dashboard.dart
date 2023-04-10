import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lets_meet/pages/login.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 119, 2, 2),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/Background.png" ),
          fit: BoxFit.fill,

            )
          ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Image.asset("assets/images/logo.jpeg", height: 46.0 , width: 45.0 , )),
                ],
              ),
              SizedBox(height: 40,),
              Text("FRONTEND" , style: TextStyle(color: Colors.white , fontFamily: "Formula1" , fontSize: 20),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/helmet.png", height: 245.98, width: 283.25,),
                ],
              ),
              SizedBox(height : 60),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 358,
                  height: 59,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontFamily: "Formula1",
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));},
                child: Container(
                  width: 359,
                  height: 59,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.red[700],
                  ),
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        fontFamily: "Formula1",
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ),
            ],
          ),
        ),
      ), 
    );
  }
}