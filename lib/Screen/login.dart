
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:pharmashots/Constants/components.dart';
import 'package:pharmashots/Screen/get_started2.dart';
import '../Constants/Constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ForgotPasswordScreen.dart';
import 'SignupScreen.dart';

class SignInScreen extends StatefulWidget {
  static const routeName = '/SignInScreen';

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  var _isLoading = false;
  var pass_showing=true;
  final emailController = TextEditingController();
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
                     height: 110,
                     child: PageHeader("Log in"),
                   ),

                   SizedBox(
                     height: 160,
                     child: Stack(
                       children: [
                         Pinned.fromPins(
                           Pin(size: 113.6, middle: 0.5),
                           Pin(size: 51.8, middle: 0.1806),
                           child: socialSVGForSingIn_SingUp(),
                         ),
                         Pinned.fromPins(
                           Pin(start: 49.8, end: 49.8),
                           Pin(size: 21.0, middle: 0.6428),
                           child: Stack(
                             children: <Widget>[
                               Pinned.fromPins(
                                 Pin(size: 18.0, middle: 0.5009),
                                 Pin(start: 0.0, end: 0.0),
                                 child: Text(
                                   'Or',
                                   style: TextStyle(
                                     fontFamily: 'Forma DJR Display',
                                     fontSize: 16,
                                     color: const Color(0xffff5038),
                                   ),
                                   textAlign: TextAlign.left,
                                 ),
                               ),
                               Pinned.fromPins(
                                 Pin(size: 119.0, start: 0.0),
                                 Pin(size: 1.0, middle: 0.625),
                                 child: SvgPicture.string(
                                   LineLeftSvg,
                                   allowDrawingOutsideViewBox: true,
                                   fit: BoxFit.fill,
                                 ),
                               ),
                               Pinned.fromPins(
                                 Pin(size: 119.0, end: 0.0),
                                 Pin(size: 1.0, middle: 0.625),
                                 child: SvgPicture.string(
                                   LineRightSvg,
                                   allowDrawingOutsideViewBox: true,
                                   fit: BoxFit.fill,
                                 ),
                               ),

                             ],
                           ),
                         ),
                         Pinned.fromPins(
                           Pin(size: 181.0, middle: 0.5251),
                           Pin(size: 27.0, middle: 0.889),
                           child: Text(
                             'Choose your email',
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
                   SizedBox(
                     height: 300,
                     child: Stack
                       (
                       children: [
                         Pinned.fromPins(
                           Pin(start: 36.0, end: 36.0),
                           Pin(size: 240.0, middle: 0.1126),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                             children: <Widget>[
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
                     height: 150,
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
                                 Pin(size: 66.0, middle: 0.4978),
                                 Pin(size: 19.0, middle: 0.4839),
                                 child: Text(
                                     'SIGN IN',
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
                           Pin(size: 189.0, middle: 0.5211),
                           Pin(size: 21.0, middle: 0.5115),
                           child: Stack(
                             children: <Widget>[
                               Pinned.fromPins(
                                 Pin(start: 0.0, end: 0.0),
                                 Pin(start: 0.0, end: 0.0),
                                 child: InkWell(
                                   onTap: (){
                                     print("forgot Click");
                                     Navigator.push(context,
                                         MaterialPageRoute(builder: (context) {
                                           return ForgotPasswordScreen();
                                         }));
                                   },
                                   child:Text(
                                     'Forgot Password ?',
                                     style: TextStyle(
                                       fontFamily: 'Forma DJR Display',
                                       fontSize: 16,
                                       color: const Color(0xff000000),
                                     ),
                                     textAlign: TextAlign.left,
                                   ) ,
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

                         Pinned.fromPins(
                           Pin(size: 233.0, middle: 0.5141),
                           Pin(size: 30.0, middle: 1.99),
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
                                           return SignUpScreen();
                                         }));
                                   },
                                   child:Text(
                                     'Sign Up',
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
                                 Pin(size: 170.0, start: 0.0),
                                 Pin(start: 0.0, end: 0.0),
                                 child: Text(
                                   'Don’t  have an account?',
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
  
  

  
  