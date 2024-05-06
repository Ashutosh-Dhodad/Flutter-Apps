import "package:flutter/material.dart";
import 'loginPage.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;
void main() async{
  runApp(const MyApp());
  database=openDatabase(
  join(await getDatabasesPath(), 'taskDB.db'),

  version: 1,
  onCreate: (db, version)async {
    await db.execute(
      '''
      CREATE TABLE taskTable(
        cardId INT PRIMARY KEY,
        Title TEXT,
        Description TEXT,
        Date DATETIME,
      )
      '''
    );
  },
);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginPage(),
    );
  }
}
