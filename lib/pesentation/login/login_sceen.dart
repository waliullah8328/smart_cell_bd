import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_cell_bd/pesentation/home/HomeScreen.dart';
import 'package:smart_cell_bd/pesentation/signUp/view/signUp_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Form(

          child: Column(
            children: [

              Text("Welcome Back!",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),

              Text("Enter your email & password"),
              SizedBox(height: 20,),
              TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return "Please Enter Your Email";

                  }},
                decoration: const InputDecoration(
                  // hintText: "Enter email",
                  labelText: "Enter Email",
                  border: InputBorder.none,

                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 4,
                          color: Colors.blue
                      )
                  ),
                  focusedBorder : OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 4,
                          color: Colors.blue
                      )
                  ),
                ),

              ),
              const SizedBox(height: 20,),
              TextFormField(
                obscureText: true,
                validator: (value){
                  if(value!.isEmpty){
                    return "Please Enter Your Password";

                  }},
                decoration:  InputDecoration(
                  // hintText: "Enter email",
                  labelText: "Enter Password",
                  border: InputBorder.none,

                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 4,
                          color: Colors.blue
                      )
                  ),
                  focusedBorder : OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 4,
                          color: Colors.blue
                      )
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),

              ),
              const SizedBox(height: 30,),
              SizedBox(
                  height: 60,
                  width: double.infinity,

                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 6,
                          backgroundColor: Colors.green
                      ),

                      onPressed: (){
                        Get.to(()=>const HomeScreen());



                        }





                      , child: const Text("Login",style: TextStyle(fontSize: 26),))),
              const SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  Get.to(()=>const SignUpScreen());

                },
                child: Text.rich(TextSpan(
                    children: [
                      TextSpan(text: "Don't have account? "),
                      TextSpan(text: "SingUp Now",style: TextStyle(color: Colors.blue)),
                    ]
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
