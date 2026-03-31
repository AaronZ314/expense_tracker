import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});
  
  @override
  State<StatefulWidget> createState(){
    return _ExpensesState();
  }

}

class _ExpensesState extends State<Expenses>{
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Pizza',
      amount: 3.50,
      date: DateTime.now(),
      category: Category.food
    ),
    Expense(
      title: 'Bus ticket',
      amount: 3.00,
      date: DateTime.now(),
      category: Category.travel
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("CHART GOES HERE"),

          SizedBox(
            height:300,
            child: ExpensesList(expenses:_registeredExpenses)),
        ],
      ),
    );
  }
}