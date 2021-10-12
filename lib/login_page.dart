import 'package:flutter/material.dart';
import 'package:login_demo/add_expense.dart';
import 'package:login_demo/view.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(

      appBar: AppBar(
       bottom: TabBar(
         tabs: [
      Text("View"),
       Text("Add Expense")
         ],
       ),
      ),
      body: TabBarView(
        children: [
          View(),
          AddExpense(),

        ],
      ),
       ),
    );

  }
}
