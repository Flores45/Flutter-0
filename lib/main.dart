import 'package:flutter/material.dart';



import 'package:flutterbootcamp/src/pages/home_temp.dart';



void main() => runApp(MyappPrincipal());
  
class MyappPrincipal extends StatelessWidget {
  const MyappPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home:MyHomePage(),
      );
    
  }
}

