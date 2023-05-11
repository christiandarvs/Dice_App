import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dice_app/dice_page.dart';

void main() => runApp(const MyApp(
      appbarTitle: 'Dicee',
    ));

class MyApp extends StatelessWidget {
  final String? appbarTitle;
  const MyApp({super.key, this.appbarTitle});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'DM Sans',
        appBarTheme: AppBarTheme(
            titleTextStyle: const TextStyle(
                fontFamily: 'DM Sans',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            backgroundColor: Colors.blue.shade300),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          backgroundColor: Colors.blue.shade100,
          appBar: AppBar(
            title: Text(appbarTitle!),
          ),
          body: const DicePage()),
    );
  }
}
