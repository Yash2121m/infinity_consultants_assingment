import 'package:flutter/material.dart';
import '../models/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          child: Icon(transaction.icon, color: Colors.blue),
        ),
        title: Text(transaction.title),
        subtitle: Text(transaction.date),
        trailing: Text(
          "₹${transaction.amount.toStringAsFixed(0)}",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}