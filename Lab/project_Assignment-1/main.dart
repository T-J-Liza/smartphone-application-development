//stateless widget er implimentation
import 'package:flutter/material.dart';
import 'package:project_test/home_page.dart';

void main() {
  runApp(
    const MyApp(),
  ); //cmpltly app take build kore user er kache show kore //constant obj er jonno cnst constructor
}

//statefull widget(dynamic page creyte korte or change korte) //stateless static hobe(kono kichu cange hobe na when static page crete korbo)
class MyApp extends StatelessWidget {
  const MyApp({super.key}); //optional key na korleo hobe
  //widget er ekta build function thake take ovverride kora lage na hoy error ashe
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //corner er debug banner remove
      home: HomePage(),
    ); //root element return korbo (materialapp)
  }
}
