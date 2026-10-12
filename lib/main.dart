// import 'package:belajar_flutter/container/LatihanContainer.dart';
// import 'package:belajar_flutter/row_column/ColumnWidget.dart';
// import 'package:belajar_flutter/row_column/RowColumnWidget.dart';
// import 'package:belajar_flutter/row_column/RowWidget.dart';
// import 'package:belajar_flutter/container/Latihan1.dart';
// import 'package:belajar_flutter/sized_box/ExpandedWidget.dart';
// import 'package:belajar_flutter/buat_latihan/Latihan3.dart';
// import 'package:belajar_flutter/buat_latihan/Latihan4.dart';
// import 'package:belajar_flutter/buat_latihan/trymakeinstagram.dart';
import 'package:belajar_flutter/list_grid_view/article_list_screen.dart';
// import 'package:belajar_flutter/list_grid_view/detail_screen.dart';
// import 'package:belajar_flutter/sized_box/LayoutDua.dart';
// import 'package:belajar_flutter/sized_box/LayoutSatu.dart';
// import 'package:belajar_flutter/sized_box/StackWidget.dart';
// import 'package:belajar_flutter/sized_box/SizedBoxWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('LATIHAN!!!'),
          backgroundColor: const Color.fromARGB(255, 121, 172, 255),
          centerTitle: true,
        ),
        body: ArticleListScreen()
      ),
    );
  }
}

class HelloWidget extends StatelessWidget {
  const HelloWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hello Flutter!', style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 0, 0, 0),
        backgroundColor: const Color.fromARGB(255, 167, 166, 166),
        ),
      ),
    );
  }
}