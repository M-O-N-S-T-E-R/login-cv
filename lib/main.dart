import 'package:flutter/material.dart';

import 'Login_Screen.dart';
import 'cv_Scren.dart';





void main(){



  runApp(MyApp());

}








class MyApp extends StatelessWidget
{

  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Login_Screen() ,


    );
  }


}
