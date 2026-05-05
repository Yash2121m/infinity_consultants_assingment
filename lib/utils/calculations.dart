import 'package:flutter/material.dart';

import '../models/transaction_model.dart';

double getTotalSpend(List<TransactionModel> transactions) {
  return transactions.fold(0, (sum, item) => sum + item.amount);
}

double getCategoryTotal(
    List<TransactionModel> transactions, String category) {
  return transactions.where((t) {
    if (category == "Food") {
      return t.icon == Icons.fastfood;
    } else if (category == "Travel") {
      return t.icon == Icons.directions_car ||
          t.icon == Icons.train ||
          t.icon == Icons.flight;
    } else if (category == "Shopping") {
      return t.icon == Icons.shopping_bag ||
          t.icon == Icons.shopping_cart;
    } else if (category == "Entertainment") {
      return t.icon == Icons.movie;
    }
    return false;
  })
      .fold(0, (sum, item) => sum + item.amount);
}