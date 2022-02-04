 
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:pharmashots/Constants/components.dart';
import '../Constants/Constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen1 extends StatefulWidget {
  static const routeName = '/SignInScreen';

  @override
  _SignInScreen1State createState() => _SignInScreen1State();
}

class _SignInScreen1State extends State<SignInScreen1> {
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
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 220.0, start: 29.0),
            Pin(size: 37.0, start: 67.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 82.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontFamily: 'Forma DJR Display',
                      fontSize: 28,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 30.0, start: 0.0),
                  Pin(size: 30.0, end: 1.0),
                  child:
                  // Adobe XD layer: 'Layer 2' (group)
                  Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                        // Adobe XD layer: 'invisible box' (group)
                        Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Container(
                                decoration: BoxDecoration(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 18.5, middle: 0.4809),
                        Pin(size: 17.2, middle: 0.4831),
                        child:
                        // Adobe XD layer: 'Q3 icons' (group)
                        Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: SvgPicture.string(
                                BackArrowSvg,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 113.6, middle: 0.5),
            Pin(size: 51.8, middle: 0.1806),
            child: socialSVGForSingIn_SingUp(),
          ),

          Pinned.fromPins(
            Pin(start: 49.8, end: 49.8),
            Pin(size: 21.0, middle: 0.2728),
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
                    _svg_dttcl7,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 119.0, end: 0.0),
                  Pin(size: 1.0, middle: 0.625),
                  child: SvgPicture.string(
                    _svg_gmt7y9,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 181.0, middle: 0.5551),
            Pin(size: 22.0, middle: 0.3137),
            child: Text(
              'Choose your email',
              style: TextStyle(
                fontFamily: 'Forma DJR Display',
                fontSize: 16,
                color: textBlack,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Form(
          key: _formKey,
          child:Stack(
          children: [
            Pinned.fromPins(
              Pin(start: 36.0, end: 36.0),
              Pin(size: 89.0, middle: 0.4046),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 21.0,
                    child: Pinned.fromPins(
                      Pin(size: 174.0, start: 0.0),
                      Pin(size: 21.0, middle: 0.0),
                      child: Text(
                        'Your Email',
                        style: TextStyle(
                          fontFamily: 'Forma DJR Display',
                          fontSize: 16,
                          color: textBlack,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    height: 48.0,
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
                    )

                  ),
                ],
              ),
            ),
            Pinned.fromPins(
              Pin(start: 36.0, end: 36.0),
              Pin(size: 89.0, middle: 0.5387),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 21.0,
                    child: Pinned.fromPins(
                      Pin(size: 76.0, start: 0.0),
                      Pin(size: 21.0, middle: 0.0),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontFamily: 'Forma DJR Display',
                          fontSize: 16,
                          color: textBlack,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    height: 48.0,
                    child:
                    TextFormField(
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
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide:
                          BorderSide(color: Color(0xFFDCD7D7), width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
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
                    // Pinned.fromPins(
                    //   Pin(start: 1.0, end: 0.0),
                    //   Pin(size: 43.0, middle: 1.0),
                    //   child: Stack(
                    //     children: <Widget>[
                    //       Pinned.fromPins(
                    //         Pin(start: 0.0, end: 0.0),
                    //         Pin(start: 0.0, end: 0.0),
                    //         child: Container(
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(22.0),
                    //             color: const Color(0xffffffff),
                    //             border: Border.all(
                    //                 width: 1.0, color: const Color(0xffdcd7d7)),
                    //           ),
                    //         ),
                    //       ),
                    //       Pinned.fromPins(
                    //         Pin(size: 120.0, start: 18.0),
                    //         Pin(size: 8.0, middle: 0.4857),
                    //         child: Stack(
                    //           children: <Widget>[
                    //             Pinned.fromPins(
                    //               Pin(size: 8.0, start: 0.0),
                    //               Pin(start: 0.0, end: 0.0),
                    //               child: Container(
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.all(
                    //                       Radius.elliptical(9999.0, 9999.0)),
                    //                   color: const Color(0xffbcb8b8),
                    //                 ),
                    //               ),
                    //             ),
                    //             Pinned.fromPins(
                    //               Pin(size: 8.0, start: 16.0),
                    //               Pin(start: 0.0, end: 0.0),
                    //               child: Container(
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.all(
                    //                       Radius.elliptical(9999.0, 9999.0)),
                    //                   color: const Color(0xffbcb8b8),
                    //                 ),
                    //               ),
                    //             ),
                    //             Pinned.fromPins(
                    //               Pin(size: 8.0, middle: 0.2857),
                    //               Pin(start: 0.0, end: 0.0),
                    //               child: Container(
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.all(
                    //                       Radius.elliptical(9999.0, 9999.0)),
                    //                   color: const Color(0xffbcb8b8),
                    //                 ),
                    //               ),
                    //             ),
                    //             Pinned.fromPins(
                    //               Pin(size: 8.0, middle: 0.4286),
                    //               Pin(start: 0.0, end: 0.0),
                    //               child: Container(
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.all(
                    //                       Radius.elliptical(9999.0, 9999.0)),
                    //                   color: const Color(0xffbcb8b8),
                    //                 ),
                    //               ),
                    //             ),
                    //             Pinned.fromPins(
                    //               Pin(size: 8.0, middle: 0.5714),
                    //               Pin(start: 0.0, end: 0.0),
                    //               child: Container(
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.all(
                    //                       Radius.elliptical(9999.0, 9999.0)),
                    //                   color: const Color(0xffbcb8b8),
                    //                 ),
                    //               ),
                    //             ),
                    //             Pinned.fromPins(
                    //               Pin(size: 8.0, middle: 0.7143),
                    //               Pin(start: 0.0, end: 0.0),
                    //               child: Container(
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.all(
                    //                       Radius.elliptical(9999.0, 9999.0)),
                    //                   color: const Color(0xffbcb8b8),
                    //                 ),
                    //               ),
                    //             ),
                    //             Pinned.fromPins(
                    //               Pin(size: 8.0, end: 16.0),
                    //               Pin(start: 0.0, end: 0.0),
                    //               child: Container(
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.all(
                    //                       Radius.elliptical(9999.0, 9999.0)),
                    //                   color: const Color(0xffbcb8b8),
                    //                 ),
                    //               ),
                    //             ),
                    //             Pinned.fromPins(
                    //               Pin(size: 8.0, end: 0.0),
                    //               Pin(start: 0.0, end: 0.0),
                    //               child: Container(
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.all(
                    //                       Radius.elliptical(9999.0, 9999.0)),
                    //                   color: const Color(0xffbcb8b8),
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //       Pinned.fromPins(
                    //         Pin(size: 13.0, end: 19.0),
                    //         Pin(size: 13.0, middle: 0.5),
                    //         child:
                    //         // Adobe XD layer: 'eye-icon-transparen…' (shape)
                    //         Container(
                    //           decoration: BoxDecoration(
                    //             image: DecorationImage(
                    //               image: const AssetImage(''),
                    //               fit: BoxFit.fill,
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ),
                ],
              ),
            ),
            Pinned.fromPins(
                Pin(start: 47.6, end: 47.4),
                Pin(size: 50.0, middle: 0.6538),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(start: 0.0, end: 0.0),
                      child:
                      // Adobe XD layer: 'bg' (shape)
                      SvgPicture.string(
                        _svg_uvfpfw,
                        allowDrawingOutsideViewBox: false,
                        fit: BoxFit.fill,

                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 66.0, middle: 0.4978),
                      Pin(size: 19.0, middle: 0.4839),
                      child: InkWell(
                      onTap: _submit,
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
    )

                      ,
                    ),
                  ],
                ),
              ),

          ],
          )
          ),



          Pinned.fromPins(
            Pin(size: 213.0, middle: 0.5141),
            Pin(size: 21.0, end: 45.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 60.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'Forma DJR Display',
                      fontSize: 16,
                      color: const Color(0xffff5038),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
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
          Pinned.fromPins(
            Pin(size: 129.0, middle: 0.5211),
            Pin(size: 21.0, middle: 0.7115),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Forgot Password ?',
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





          Container(),
        ],
      ),
    );


  }
   String _svg_uvfpfw =
      '<svg viewBox="48.0 637.0 295.0 50.0" ><path transform="translate(48.0, 637.0)" d="M 25 0 L 270 0 C 283.80712890625 0 295 11.1928825378418 295 25 C 295 38.8071174621582 283.80712890625 50 270 50 L 232.0986633300781 50 L 25 50 C 11.1928825378418 50 0 38.8071174621582 0 25 C 0 11.1928825378418 11.1928825378418 0 25 0 Z" fill="#ff5038" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

  String _svg_vc4dr1 =
      '<svg viewBox="156.0 578.0 51.8 51.8" ><defs><filter id="shadow"><feDropShadow dx="0" dy="30" stdDeviation="99"/></filter></defs><path transform="translate(156.0, 578.0)" d="M 25.8905029296875 0 C 40.18943023681641 0 51.781005859375 11.59157466888428 51.781005859375 25.8905029296875 C 51.781005859375 40.18943023681641 40.18943023681641 51.781005859375 25.8905029296875 51.781005859375 C 11.59157466888428 51.781005859375 0 40.18943023681641 0 25.8905029296875 C 0 11.59157466888428 11.59157466888428 0 25.8905029296875 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
  String _svg_dttcl7 =
      '<svg viewBox="48.5 755.5 119.0 1.0" ><path transform="translate(48.5, 755.5)" d="M 0 0 L 119 0" fill="none" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
   String _svg_gmt7y9 =
      '<svg viewBox="224.0 755.5 119.0 1.0" ><path transform="translate(224.0, 755.5)" d="M 0 0 L 119 0" fill="none" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
    String _svg_ljd0 =
      '<svg viewBox="1.4 0.0 20.9 10.9" ><path transform="translate(0.15, 0.0)" d="M 5.744513034820557 10.92455387115479 C 6.787891864776611 7.762939929962158 9.759045600891113 5.492290019989014 13.27828788757324 5.492290019989014 C 15.17007637023926 5.492290019989014 16.87878799438477 6.163569927215576 18.22134971618652 7.262027740478516 L 22.12697601318359 3.356399536132812 C 19.74698448181152 1.281534314155579 16.69571304321289 0 13.27828788757324 0 C 7.986442089080811 0 3.430330991744995 3.018855094909668 1.239990234375 7.440045833587646 L 5.744513034820557 10.92455387115479 Z" fill="#ea4335" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
   String _svg_ssjldp =
      '<svg viewBox="1.4 16.0 20.8 10.9" ><path transform="translate(0.15, 1.7)" d="M 17.79935264587402 18.45746040344238 C 16.58007049560547 19.24477386474609 15.03072738647461 19.66388511657715 13.27858734130859 19.66388511657715 C 9.772812843322754 19.66388511657715 6.810939311981201 17.41057968139648 5.756875991821289 14.26787567138672 L 1.237462639808655 17.69935989379883 C 3.425083160400391 22.12828636169434 7.981072902679443 25.15617561340332 13.27858734130859 25.15617561340332 C 16.55984306335449 25.15617561340332 19.69529151916504 23.98970222473145 22.04347991943359 21.7993049621582 L 17.79935264587402 18.45746040344238 Z" fill="#34a853" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
   String _svg_tp366z =
      '<svg viewBox="13.4 11.0 12.8 12.5" ><path transform="translate(1.43, 1.17)" d="M 20.764892578125 22.32792663574219 C 23.22063064575195 20.03720474243164 24.81534385681152 16.62661552429199 24.81534385681152 12.25919914245605 C 24.81534385681152 11.46586799621582 24.69329261779785 10.61151123046875 24.51021575927734 9.818181991577148 L 12 9.818181991577148 L 12 15.00534439086914 L 19.20100212097168 15.00534439086914 C 18.84568023681641 16.74964332580566 17.89193534851074 18.1006908416748 16.52076530456543 18.98608207702637 L 20.764892578125 22.32792663574219 Z" fill="#4a90e2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
   String _svg_e0gdnz =
      '<svg viewBox="0.0 7.4 5.9 12.0" ><path transform="translate(0.0, 0.79)" d="M 5.903886318206787 15.17287540435791 C 5.636878490447998 14.37679004669189 5.492290019989014 13.52363395690918 5.492290019989014 12.63557624816895 C 5.492290019989014 11.76098537445068 5.632526874542236 10.92024517059326 5.891823768615723 10.13453197479248 L 1.387300848960876 6.650023937225342 C 0.4884536564350128 8.451746940612793 0 10.4823169708252 0 12.63557624816895 C 0 14.78316593170166 0.4976206123828888 16.80889129638672 1.384472966194153 18.6043586730957 L 5.903886318206787 15.17287540435791 Z" fill="#fbbc05" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
  String _svg_j8lvd1 =
      '<svg viewBox="0.0 0.0 19.2 18.4" ><path transform="translate(-27.07, -23.97)" d="M 46.27360534667969 35.22006607055664 L 46.27360534667969 42.32160949707031 L 42.15631866455078 42.32160949707031 L 42.15631866455078 35.69600296020508 C 42.15631866455078 34.03238296508789 41.56186676025391 32.89628219604492 40.07112121582031 32.89628219604492 C 38.93347930908203 32.89628219604492 38.25765991210938 33.66115570068359 37.95920562744141 34.40176773071289 C 37.85081481933594 34.66645050048828 37.82286834716797 35.03399276733398 37.82286834716797 35.40522003173828 L 37.82286834716797 42.3213005065918 L 33.70527648925781 42.3213005065918 C 33.70527648925781 42.3213005065918 33.76054382324219 31.09971046447754 33.70527648925781 29.9381275177002 L 37.82317352294922 29.9381275177002 L 37.82317352294922 31.69293975830078 C 37.81488800048828 31.70676040649414 37.80321502685547 31.72027015686035 37.79584503173828 31.73347282409668 L 37.82317352294922 31.73347282409668 L 37.82317352294922 31.69293975830078 C 38.37034606933594 30.85099983215332 39.34616088867188 29.64734840393066 41.53392028808594 29.64734840393066 C 44.24275207519531 29.64734840393066 46.27360534667969 31.41720771789551 46.27360534667969 35.22006607055664 L 46.27360534667969 35.22006607055664 Z M 29.39792251586914 23.9689998626709 C 27.98946762084961 23.9689998626709 27.06800079345703 24.89353942871094 27.06800079345703 26.10824394226074 C 27.06800079345703 27.29715728759766 27.96275329589844 28.24841117858887 29.34388160705566 28.24841117858887 L 29.37059783935547 28.24841117858887 C 30.80668830871582 28.24841117858887 31.69959831237793 27.29715728759766 31.69959831237793 26.10824394226074 C 31.67227172851562 24.89353942871094 30.80668640136719 23.9689998626709 29.39792251586914 23.9689998626709 L 29.39792251586914 23.9689998626709 Z M 27.31272125244141 42.32160949707031 L 31.42877960205078 42.32160949707031 L 31.42877960205078 29.9381275177002 L 27.31272125244141 29.9381275177002 L 27.31272125244141 42.32160949707031 Z" fill="#f1f2f2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

}
  
  

  
  