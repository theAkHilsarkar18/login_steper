
import 'package:flutter/material.dart';
import 'package:login_steper/screens/loginscreen/provider/loginprovider.dart';
import 'package:login_steper/screens/loginscreen/view/loginscreen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Loginprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Loginscreen(),
        },
      ),
    ),
  );
}