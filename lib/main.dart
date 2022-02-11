import 'package:flutter/material.dart';
import 'package:pharmashots/Screen/home_screen.dart';
import 'package:pharmashots/routs.dart';
import 'Screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    //  home: HomeState(),
      initialRoute: MyRoutes.HomePagerouts,
      routes: {
        // "/": (context) => OnBoardingPage(),
        MyRoutes.HomeStateRout: (context) => HomeState(),
        MyRoutes.HomePagerouts: (context) => HomePage(),
      },
    );
  }
}

