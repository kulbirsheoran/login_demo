import 'package:flutter/material.dart';
import 'package:login_demo/login_page.dart';
import 'package:login_demo/sign_up.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Container(color: Colors.cyanAccent,
          child: Padding(padding: const EdgeInsets.all(40),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Input Mobile Number"
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Input Password"
                  ),
                ),
                SizedBox(height: 16,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                }, child: Text("Login",
                style: TextStyle(),
                )),
                SizedBox(height: 16,),
                ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                }, child: Text("SignUp"))
              ],
            ),
          ),
        ),
      ),
    );

  }}