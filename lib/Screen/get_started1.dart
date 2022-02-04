import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pharmashots/Constants/Constant.dart';

import '../Constants/ColorButton.dart';
import 'get_started2.dart';

class GetStarted1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var height = AppBar().preferredSize.height;
    return Scaffold(
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
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  Container(
                    width: 250,height: 260,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/images/Group.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  Center(
                    child: Text(
                      'Welcome To\nPharma Shots',
                      style: TextStyle(
                        fontFamily: 'Forma DJR Display',
                        fontSize: 48,
                        color: const Color(0xffff5038),
                        fontWeight: FontWeight.w700,
                        height: 1,
                      ),
                      textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 12,bottom: 30),
                    child:Center(
                      child:Text(
                        'Real - time summarised news in 3 shots from Biopharma, MedTech, Digital Health & Life Science Industry.',
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontSize: 16,
                          color: const Color(0x9a000000),
                          height: 1.2857142857142858,
                        ),
                        textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ) ,
                    ) ,),
                  Padding(padding: EdgeInsets.only(top: 12,bottom: 30),
                    child:Center(
                      child: Text(
                        'Readable In 60 Seconds',
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontSize: 16,
                          color: const Color(0xffff5038),
                          height: 1.25,
                        ),
                        textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                    ) ,),
                  Padding(padding: EdgeInsets.all(12),
                      child: Center(
                        child:InkWell
                          (
                          onTap: (){
                            print("Click Next");
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return GetStarted2();
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
                  SizedBox(height: 40,),
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
            //SizedBox(height: 80,),

          ],
        ),
      ),
    );
  }

}