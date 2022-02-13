import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pharmashots/Constants/Constant.dart';

import '../Constants/ColorButton.dart';
import 'get_started1.dart';

class HomeState extends StatelessWidget{
  DateTime? currentBackPressTime;

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(msg: "press back twice to exit");
      return Future.value(false);
    }
    return exit(0);
  }

  @override
  Widget build(BuildContext context) {
    var height = AppBar().preferredSize.height;

    return WillPopScope(
        onWillPop: onWillPop,
        child:
        Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        child: Stack(
          //mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  Padding(padding: EdgeInsets.all(12),child: Center(
                    child: Image.asset('assets/images/Image1@2x.png'),
                  )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  Padding(padding: EdgeInsets.all(12),
                      child: Center(
                    child:InkWell
                      (
                      onTap: (){
                        print("Click Next");
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return GetStarted1();
                            }));
                      },
                      child:ColorButton(
                      title: 'Next',
                      width: 178,
                      height: 50,
                      colorValue: orange,
                    ) ,
                    )

                    ,
                  )),
                ],
              ),
            ),
            //SizedBox(height: 80,),

          ],
        ),
      ),
    )
    );
  }
  
}