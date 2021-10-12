import 'package:flutter/material.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({Key? key}) : super(key: key);

  @override
  _AddExpenseState createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Form(
       child: Padding(
         padding: const EdgeInsets.all(40),
         child: Column(
           children: [Container(
             child: TextFormField(
               decoration: InputDecoration(
                 hintText: "Name Expense"
               ),
             ),
           ),
           TextFormField(
             decoration: InputDecoration(
               hintText: "Amount"
             ),
           ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: (){}, child: Text("Submit"))
           ],
         ),
       ),
     ),
      );

  }
}
