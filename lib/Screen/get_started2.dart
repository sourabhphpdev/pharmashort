import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pharmashots/Constants/Constant.dart';
import 'package:pharmashots/Constants/components.dart';

import '../Constants/ColorButton.dart';
import 'login.dart';

class GetStarted2 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 390.0,
          height: 853.0,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Positioned(
                left: 21.0,
                top: 14.0,
                child: SizedBox(
                  width: 339.33,
                  height: 783.0,
                  child: Column(
                    children: <Widget>[
                      Spacer(flex: 14),

                      Spacer(flex: 300),
                      Align(
                        alignment: Alignment(0.43, 0.0),
                        child: Text(
                          'Welcome To\nPharma Shots',
                          style: TextStyle(
                            fontFamily: 'Forma DJR Display',
                            fontSize: 44.0,
                            color: const Color(0xFFFF5038),
                            fontWeight: FontWeight.w700,
                            height: 1.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 14),
                      Align(
                       // alignment: Alignment(0.43, 0.0),
                        child: Text(
                          'Real - time summarised news in 3 shots from Biopharma, MedTech, Digital Health & Life Science Industry.',
                          style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 14.0,
                            color: Colors.black.withOpacity(0.6),
                            height: 1.29,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 13),
                      Align(
                       // alignment: Alignment(0.43, 0.0),
                        child: Text(
                          'Readable In 60 Seconds',
                          style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 16.0,
                            color: const Color(0xFFFF5038),
                            height: 1.25,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 33),
                      Align(
                        alignment: Alignment(0.06, 0.0),
                        child:InkWell(
                          onTap: (){
                            print("Click Next");
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return SignInScreen();
                                }));
                          },
                          child: Btn_white(),
                        )

                        ,
                      ),
                      Spacer(flex: 38),
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
              ),
              Positioned(
                top: -139,
                child: Container(
                  width: 464.0,
                  height: 547.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(195.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/onboard.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}