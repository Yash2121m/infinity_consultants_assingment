import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../models/transaction_model.dart';

List<Category> categories = [
  Category(name: "Food", icon: Icons.fastfood, amount: 4500),
  Category(name: "Travel", icon: Icons.flight, amount: 3000),
  Category(name: "Shopping", icon: Icons.shopping_bag, amount: 5000),
];

List<TransactionModel> transactions = [
  TransactionModel(title: "Swiggy", date: "May 5", amount: 250, icon: Icons.fastfood),
  TransactionModel(title: "Uber", date: "May 4", amount: 180, icon: Icons.directions_car),
];