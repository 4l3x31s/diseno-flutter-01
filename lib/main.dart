import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:disenos_01/screens/home_screen.dart';
import 'package:disenos_01/screens/scroll_design.dart';
import 'package:disenos_01/screens/basic_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //para cambiar el tipo de tema ligth o dark
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      theme: ThemeData.light(),
      routes:{
        'basic_design': ( _ ) => BasicDesignScreen(),
        'scroll_screen': ( _ ) => ScrollScreen(),
        'home_screen': ( _ ) => HomeScreen()
      }
    );
  }
}