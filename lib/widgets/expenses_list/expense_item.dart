import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget{
  const ExpenseItem({super.key, required this.expense});
  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Column(
        children: [
          Text(expense.title), //Text box at the top of column
          const SizedBox(height: 4), //A little space between first row of the column and second column
          Row(children: [ //We need a bunch of things in this row of the column so we add a row
            Text('\$${expense.amount.toStringAsFixed(2)}'), //Amount first
            Spacer(), //Basically pushes everything to the right
            Row(children: [ //Cat and date closely grouped so another row in this row
            const Icon(Icons.question_mark), //Change this later to look up a correct icon for the cat
            const SizedBox(width: 8),
            Text(expense.date.toString()) //fix this date to be correclty formatted
            ],)
          ],)
        ],
      ),
    );
  }
}