import 'package:flutter/material.dart';
import 'package:smart_expense_tracker/screens/splash_screen.dart';

void main(){
  runApp(const ExpenseApp());
}
class ExpenseApp extends StatefulWidget {
  const ExpenseApp({super.key});

  @override
  State<ExpenseApp> createState() => _ExpenseAppState();
}

class _ExpenseAppState extends State<ExpenseApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart_expense_tracker',
      home: SplashScreen(),
    );
  }
}
