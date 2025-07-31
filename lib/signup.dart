import 'package:flutter/material.dart';
import 'package:login_ui_technol/sigin.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,right: 10
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Sign up",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Create your account",
                ),
                SizedBox(
                  height: 15,
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
                  height: 15,
                ),
                TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Email',
                        fillColor: Colors.purple.withOpacity(0.3),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none))),
                SizedBox(
                  height: 15,
                ),
                TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        hintText: 'Password',
                        fillColor: Colors.purple.withOpacity(0.3),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none))),
                SizedBox(
                  height: 15,
                ),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        hintText: 'Confirm Pasword',
                        fillColor: Colors.purple.withOpacity(0.3),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none))),
                SizedBox(height: 20,),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text("Sign up",
                  style: TextStyle(
                    color: Colors.white
                  ),)),
            
                ),
                SizedBox(height: 20,),
                Text("Or"),
                SizedBox(height: 20,),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                     border: Border.all(
                       color: Colors.purple
                     ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text("Sign in with Google",
                    style: TextStyle(
                        color: Colors.purple
                    ),)),
            
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an accunt?") ,

                    SizedBox(width: 10,),
                    InkWell(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>sigin()));
                    },
                      child: Text("Login",style: TextStyle(
                        color: Colors.purple
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
