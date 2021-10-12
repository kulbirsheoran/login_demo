import 'package:flutter/material.dart';
import 'package:login_demo/db_helper.dart';
import 'package:login_demo/home_page.dart';
import 'package:login_demo/user_info.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController=TextEditingController();
  TextEditingController mobileController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmpasswordController=TextEditingController();
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               child: TextFormField(
                 controller: nameController,

                 decoration: InputDecoration(

                   hintText: "Name",
                 ),
                 validator: (value){
                   if(value==null||value.isEmpty);
                   return "Please Input Name";
                 },
               ),

             ),TextFormField(
               decoration: InputDecoration(
                 hintText: "Mobile No"
               ),
               validator: (value){
                 if(value==null||value.isEmpty);
                 return "Please Input Mobile No";
               },
             ),
             TextFormField(
               decoration: InputDecoration(
                   hintText: "Password"
               ),
               validator: (value){
                 if(value==null||value.isEmpty);
                 return "Please Input Password";
               },
             ),
             TextFormField(
               decoration: InputDecoration(
                   hintText: " Confirm Password"
               ),
               validator: (value){
                 if(value==null||value.isEmpty);
                 return "Please Confirm Password";
               },
             ),
             SizedBox(height: 20),
             ElevatedButton(onPressed: (){
               if(formkey.currentState!.validate()){
              String name=nameController.text;
              String mobile=mobileController.text;
              String password=passwordController.text;
              String confirmPassword=confirmpasswordController.text;
              UserInfo userinfo=UserInfo(
                name: name,mobile: mobile,password: password,confirmPassword: confirmPassword
              );
              DbHelper.userInfo=UserInfo();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
               }

             }, child: Text("Create Account"))
           ],
          ),
        ),
      ),
    );
  }
}
