
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:pharmashots/Constants/components.dart';
import '../Constants/Constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/SignInScreen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  var _isLoading = false;
  var pass_showing=true;
  final emailController = TextEditingController();
  final fullnameController = TextEditingController();
  final passwordController = TextEditingController();

  Map<String, String> _authData = {
    'email': '',
    'password': '',
  };

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) {
      // Invalid!
      return;
    }
    _formKey.currentState!.save();

    setState(() {
      _isLoading = true;
    });
    try {
      // Log user in
      // await Provider.of<Auth>(context, listen: false).login(
      //   _authData['email'].toString(),
      //   _authData['password'].toString(),
      // );
      print("login..");
      //Navigator.pushNamedAndRemoveUntil(context, '/home', (r) => false);
      // CommonFunctions.showSuccessToast('Login Successful');
    } on Exception {
      var errorMsg = 'Auth failed';
      // CommonFunctions.showErrorDialog(errorMsg, context);
    } catch (error) {
      print(error);
      const errorMsg = 'Could not authenticate!';
      // CommonFunctions.showErrorDialog(errorMsg, context);
    }
    setState(() {
      _isLoading = false;
    });
  }
  void passwordShowingToggle()
  {
    setState(() {
      if(pass_showing==true)
      {
        pass_showing=false;
      }else{
        pass_showing=true;
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          body: Form(
            key: _formKey,
            child:SingleChildScrollView(
                child: Column(
                    children: [
                      SizedBox(
                        height: 130,
                        child: PageHeader("Create Account"),
                      ),

                      buildSocialLogin(context),


                      SizedBox(
                        height: 340,
                        child: Stack
                          (
                          children: [
                            Pinned.fromPins(
                              Pin(start: 36.0, end: 36.0),
                              Pin(size: 335.0, middle: 0.1126),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(
                                    'Full Name',
                                    style: TextStyle(
                                      fontFamily: 'Forma DJR Display',
                                      fontSize: 16,
                                      color: const Color(0xff000000),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(
                                    height: 12.0,
                                  ),
                                  SizedBox(
                                    //  height: 48.0,
                                    child:TextFormField(
                                      style: TextStyle(fontSize: 14),
                                      decoration: getInputDecoration(
                                        'Full Name',
                                        Icons.title,
                                      ),
                                      controller: fullnameController,
                                    //  keyboardType: TextInputType.emailAddress,
                                      validator: (value) {
                                        if (value!.isEmpty || value.length < 3) {
                                          return 'Required a valid name !';
                                        }
                                      },
                                      onSaved: (value) {
                                        emailController .text = value.toString();
                                        _authData['email'] = value!;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.0,
                                  ),
                                  Text(
                                    'Your Email',
                                    style: TextStyle(
                                      fontFamily: 'Forma DJR Display',
                                      fontSize: 16,
                                      color: const Color(0xff000000),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(
                                    height: 12.0,
                                  ),
                                  SizedBox(
                                    //  height: 48.0,
                                    child:TextFormField(
                                      style: TextStyle(fontSize: 14),
                                      decoration: getInputDecoration(
                                        'example@gmail.com',
                                        Icons.title,
                                      ),
                                      controller: emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      validator: (input) =>
                                      !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                                          .hasMatch(input!)
                                          ? "Email Id should be valid"
                                          : null,
                                      onSaved: (value) {
                                        emailController .text = value.toString();
                                        _authData['email'] = value!;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.0,
                                  ),
                                  Text(
                                    'Password',
                                    style: TextStyle(
                                      fontFamily: 'Forma DJR Display',
                                      fontSize: 16,
                                      color: const Color(0xff000000),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(
                                    height: 12.0,
                                  ),
                                  SizedBox(
                                    //height: 43.0,
                                    child: TextFormField(
                                      style: TextStyle(fontSize: 14),
                                      decoration:
                                      InputDecoration(
                                        suffixIcon: InkWell(
                                          child:Icon(pass_showing?Icons.remove_red_eye_outlined:Icons.remove_red_eye_rounded) ,
                                          onTap: (){print('gg');
                                          passwordShowingToggle();
                                          },
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                          borderSide:
                                          BorderSide(color: Color(0xFFDCD7D7), width: 0.5),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                          borderSide:
                                          BorderSide(color: Color(0xFFDCD7D7), width: 0.5),
                                        ),
                                        border: new OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Color(0xFFDCD7D7), width: 0.5),
                                          borderRadius: const BorderRadius.all(
                                            const Radius.circular(5.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                          borderSide: BorderSide(color: Color(0xFFF65054)),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                          borderSide: BorderSide(color: Color(0xFFF65054)),
                                        ),
                                        filled: false,
                                        hintStyle:
                                        new TextStyle(color: Colors.black54, fontSize: 14),
                                        hintText: "* * * * *",
                                        // fillColor: Color(0xFFF7F7F7),
                                        contentPadding:
                                        EdgeInsets.symmetric(vertical: 17, horizontal: 15),
                                      ),
                                      obscureText: pass_showing,
                                      controller: passwordController,
                                      keyboardType: TextInputType.emailAddress,
                                      validator: (value) {
                                        if (value!.isEmpty || value.length < 4) {
                                          return 'Password is too short!';
                                        }
                                      },
                                      onSaved: (value) {
                                        passwordController.text = value.toString();
                                        _authData['password'] = value!;
                                      },
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 190,
                        child: Stack(
                          children: [
                            Pinned.fromPins(
                              Pin(start: 47.6, end: 47.4),
                              Pin(size: 50.0, middle: 0.038),
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                      Pin(start: 0.0, end: 0.0),
                                      Pin(start: 0.0, end: 0.0),
                                      child:InkWell(
                                        onTap: _submit,
                                        child:
                                        // Adobe XD layer: 'bg' (shape)
                                        SvgPicture.string(
                                          BtnBgRedSVG,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),)
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 96.0, middle: 0.4978),
                                    Pin(size: 19.0, middle: 0.4839),
                                    child: Text(
                                      'SIGN UP',
                                      style: TextStyle(
                                        fontFamily: 'Forma DJR Display',
                                        fontSize: 14,
                                        color: const Color(0xffffffff),
                                        letterSpacing: 2.1,
                                        fontWeight: FontWeight.w700,
                                        height: 2.5,
                                      ),
                                      textHeightBehavior:
                                      TextHeightBehavior(applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 240.0, middle: 0.5141),
                              Pin(size: 50.0, middle: 0.99),
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 60.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child: InkWell(
                                      onTap: (){
                                        print("singup clicked");
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) {
                                              return SignInScreen();
                                            }));
                                      },
                                      child:Text(
                                        'Login',
                                        style: TextStyle(
                                          fontFamily: 'Forma DJR Display',
                                          fontSize: 16,
                                          color: const Color(0xffff5038),
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.center,
                                      ) ,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 200.0, start: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child: Text(
                                      'Already  have an account?',
                                      style: TextStyle(
                                        fontFamily: 'Forma DJR Display',
                                        fontSize: 16,
                                        color: const Color(0xff000000),
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: Stack(
                          children: [
                            // Pinned.fromPins(
                            //   Pin(size: 233.0, middle: 0.5141),
                            //   Pin(size: 50.0, middle: 0.99),
                            //   child: Stack(
                            //     children: <Widget>[
                            //       Pinned.fromPins(
                            //         Pin(size: 60.0, end: 0.0),
                            //         Pin(start: 0.0, end: 0.0),
                            //         child: InkWell(
                            //           onTap: (){
                            //             print("singup clicked");
                            //             Navigator.push(context,
                            //                 MaterialPageRoute(builder: (context) {
                            //                   return SignInScreen();
                            //                 }));
                            //           },
                            //           child:Text(
                            //             'Login',
                            //             style: TextStyle(
                            //               fontFamily: 'Forma DJR Display',
                            //               fontSize: 16,
                            //               color: const Color(0xffff5038),
                            //               fontWeight: FontWeight.w700,
                            //             ),
                            //             textAlign: TextAlign.center,
                            //           ) ,
                            //         ),
                            //       ),
                            //       Pinned.fromPins(
                            //         Pin(size: 230.0, start: 0.0),
                            //         Pin(start: 0.0, end: 0.0),
                            //         child: Text(
                            //           'Already  have an account?',
                            //           style: TextStyle(
                            //             fontFamily: 'Forma DJR Display',
                            //             fontSize: 16,
                            //             color: const Color(0xff000000),
                            //           ),
                            //           textAlign: TextAlign.left,
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),

                          ],
                        ),
                      )






                      //


                      //



                    ])

            ),
          ),
        )





      ],
    );
  }


}




