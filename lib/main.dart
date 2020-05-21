import 'package:bibliotech/src/pages/book_detail.dart';
import 'package:bibliotech/src/pages/client.dart';
import 'package:bibliotech/src/pages/inventory.dart';
import 'package:bibliotech/src/pages/loan_detail.dart';
import 'package:bibliotech/src/pages/login.dart';
import 'package:bibliotech/src/pages/home.dart';
import 'package:bibliotech/src/pages/author.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bibliotech',
      initialRoute:'login',
      routes: {
        'login': (BuildContext context) => Login(),
        'home': (BuildContext context) => Home(),
        'book_detail' : (BuildContext context) => BookDetail(),
        'author' : (BuildContext context) => AuthorDetail(),
        'inventory': (BuildContext context) => InventoryDetail(),
        'loan': (BuildContext context) => LoanDetail(),
        'client': (BuildContext context) => ClientDetail(),
      },
    ); 
  }
}