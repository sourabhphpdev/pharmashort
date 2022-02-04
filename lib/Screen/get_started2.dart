import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pharmashots/Constants/Constant.dart';
import 'package:pharmashots/Constants/components.dart';

import '../Constants/ColorButton.dart';
import 'login.dart';

class GetStarted2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 347,
              width: 464,
              child: Stack(
                children: [
                  Positioned(
                      top: -239,
                      child: Container(
                        width: 390.0,
                        height: 547.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(125.0),
                          image: DecorationImage(
                            image: AssetImage('assets/images/onboard.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ))
                ],
              ),
            ),
            Text(
              'Welcome To\nPharma Shots',
              style: heading1,
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(5),
            child:Text(
                                    'Real - time summarised news in 3 shots from Biopharma, MedTech, Digital Health & Life Science Industry.',
                                    style: textStyle1,
                                    textAlign: TextAlign.center,
                                  ),
            ),
            //Spacer(flex: 3,),
        Text(
                                'Readable In 60 Seconds',
                                style: TextStyle(
                                  fontFamily: 'Helvetica',
                                  fontSize: 16.0,
                                  color: const Color(0xFFFF5038),
                                  height: 1.25,
                                ),
                                textAlign: TextAlign.center,
                              ),
Spacer(flex: 2,),
           InkWell(
                                  onTap: (){
                                    print("Click Next");
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return SignInScreen();
                                        }));
                                  },
                                  child: Btn_white(),
                                ),
        Spacer(flex: 2,),
        Text.rich(
                              TextSpan(
                                style: TextStyle(
                                  fontFamily: 'Helvetica',
                                  fontSize: 15,
                                  color: const Color(0xff000000),
                                  height: 1.3333333333333333,
                                ),
                                children: [
                                  TextSpan(

                                    text: 'By creating an account, you agree to our\n',
                                  ),
                                  TextSpan(
                                    text: 'Terms & Condition',
                                    style: TextStyle(
                                      color: const Color(0xffff5038),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' and agree to our ',
                                  ),
                                  TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(
                                      color: const Color(0xffff5038),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                              textHeightBehavior:
                              TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
          ],
        ),
      ),
    );


  }
}
