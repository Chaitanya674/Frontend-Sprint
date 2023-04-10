import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 22,),
              Row(
                children: [
                  Container(
                    child: Image.asset("assets/images/login_top.png", )
                    ),
                ],
              ),
              Text("Login" ,style: TextStyle(color: Colors.white , fontFamily: "Formula2" , fontSize: 40),),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    
                  ),
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(146, 255, 255, 255),
                  )
                ),
                validator: (val) => val!.isEmpty ? 'Enter an email' : null ,
                onChanged: (val) {
                  // setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "*********",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(146, 255, 255, 255),
                  )
                ),
                obscureText: true,
                validator: (val) => val!.length < 6 ? 'Enter an password 6+ chars long' : null ,
                onChanged: (val) {
                  
                },
              ),
              SizedBox(height: 150,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
            ],
            
          ),
        ),
      ),
    );
  }
}