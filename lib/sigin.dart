import 'package:flutter/material.dart';
import 'package:login_ui_technol/signup.dart';

class sigin extends StatelessWidget {
  const sigin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 80.0, bottom: 20, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text("Enter your credential to login"),
                SizedBox(
                  height: 60,
                ),
                TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'User name',
                        fillColor: Colors.purple.withOpacity(0.3),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none))),
                SizedBox(
                  height: 10,
                ),
                TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        hintText: 'password',
                        fillColor: Colors.purple.withOpacity(0.3),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none))),
                SizedBox(
                  height: 40,
                ),
            
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(height: 50,),
                Text("Forget password?",
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 50,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
            
                   Text("Dont have an account ?") ,
                   SizedBox(width: 10,),
            
                   InkWell(onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
            
                   },
                     child: Text("Sign up",
                     style: TextStyle(
                       color: Colors.purple,
                       fontWeight: FontWeight.bold
                     ),),
                   )
                 ],
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
