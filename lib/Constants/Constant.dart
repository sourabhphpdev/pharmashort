import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

String BaseUrl = 'https://viragtea.com/localsmart/public/api/';

Color white = Colors.white;
Color textBlack = Color(0xff000000);
Color orange = Color(0xFFFF5038);
Color shadowColor = Color(0x7E95A1FF);
Color lightBlue = Color.fromRGBO(4, 8, 112, 0.56);
Color lightBlueWithLowOpacity = Color.fromRGBO(4, 8, 112, 0.12);
TextStyle heading1=TextStyle(
  fontFamily: 'Forma DJR Display',
  fontSize: 44,
  color: orange,
  fontWeight: FontWeight.bold
);

String BtnBgRedSVG =
    '<svg viewBox="48.0 637.0 295.0 50.0" ><path transform="translate(48.0, 637.0)" d="M 25 0 L 270 0 C 283.80712890625 0 295 11.1928825378418 295 25 C 295 38.8071174621582 283.80712890625 50 270 50 L 232.0986633300781 50 L 25 50 C 11.1928825378418 50 0 38.8071174621582 0 25 C 0 11.1928825378418 11.1928825378418 0 25 0 Z" fill="#ff5038" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String BackArrowSvg =
    '<svg viewBox="0.0 0.0 18.5 17.2" ><path transform="translate(-8.98, -10.0)" d="M 16.69427680969238 10.37001419067383 L 9.363668441772461 17.76222610473633 C 9.122063636779785 17.98390197753906 8.984523773193359 18.2967586517334 8.984523773193359 18.6246509552002 C 8.984523773193359 18.95254325866699 9.122063636779785 19.26539993286133 9.363668441772461 19.48707580566406 L 16.69427680969238 26.87928771972656 C 17.14469337463379 27.3199634552002 17.84709739685059 27.37199020385742 18.3575267791748 27.00249481201172 C 18.65840911865234 26.80042266845703 18.84869956970215 26.4703540802002 18.8728084564209 26.10871315002441 C 18.89691734313965 25.74707221984863 18.75212478637695 25.39466667175293 18.4807300567627 25.15444183349609 L 13.1829776763916 19.85668563842773 L 26.24254989624023 19.85668563842773 C 26.92298316955566 19.85668563842773 27.47458648681641 19.30508422851562 27.47458648681641 18.6246509552002 C 27.47458648681641 17.94421577453613 26.92298316955566 17.39261627197266 26.24254989624023 17.39261627197266 L 13.1829776763916 17.39261627197266 L 18.4807300567627 12.09486293792725 C 18.75212478637695 11.85463619232178 18.89691543579102 11.50223064422607 18.87280654907227 11.14059162139893 C 18.84869575500488 10.77895355224609 18.65840721130371 10.44888591766357 18.35752487182617 10.24681091308594 C 17.84709739685059 9.877314567565918 17.14469337463379 9.929343223571777 16.69427871704102 10.37001419067383 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String LineLeftSvg =
    '<svg viewBox="48.5 755.5 119.0 1.0" ><path transform="translate(48.5, 755.5)" d="M 0 0 L 119 0" fill="none" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String LineRightSvg =
    '<svg viewBox="224.0 755.5 119.0 1.0" ><path transform="translate(224.0, 755.5)" d="M 0 0 L 119 0" fill="none" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vc4dr1 =
    '<svg viewBox="156.0 578.0 51.8 51.8" ><defs><filter id="shadow"><feDropShadow dx="0" dy="30" stdDeviation="99"/></filter></defs><path transform="translate(156.0, 578.0)" d="M 25.8905029296875 0 C 40.18943023681641 0 51.781005859375 11.59157466888428 51.781005859375 25.8905029296875 C 51.781005859375 40.18943023681641 40.18943023681641 51.781005859375 25.8905029296875 51.781005859375 C 11.59157466888428 51.781005859375 0 40.18943023681641 0 25.8905029296875 C 0 11.59157466888428 11.59157466888428 0 25.8905029296875 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ljd0 =
    '<svg viewBox="1.4 0.0 20.9 10.9" ><path transform="translate(0.15, 0.0)" d="M 5.744513034820557 10.92455387115479 C 6.787891864776611 7.762939929962158 9.759045600891113 5.492290019989014 13.27828788757324 5.492290019989014 C 15.17007637023926 5.492290019989014 16.87878799438477 6.163569927215576 18.22134971618652 7.262027740478516 L 22.12697601318359 3.356399536132812 C 19.74698448181152 1.281534314155579 16.69571304321289 0 13.27828788757324 0 C 7.986442089080811 0 3.430330991744995 3.018855094909668 1.239990234375 7.440045833587646 L 5.744513034820557 10.92455387115479 Z" fill="#ea4335" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ssjldp =
    '<svg viewBox="1.4 16.0 20.8 10.9" ><path transform="translate(0.15, 1.7)" d="M 17.79935264587402 18.45746040344238 C 16.58007049560547 19.24477386474609 15.03072738647461 19.66388511657715 13.27858734130859 19.66388511657715 C 9.772812843322754 19.66388511657715 6.810939311981201 17.41057968139648 5.756875991821289 14.26787567138672 L 1.237462639808655 17.69935989379883 C 3.425083160400391 22.12828636169434 7.981072902679443 25.15617561340332 13.27858734130859 25.15617561340332 C 16.55984306335449 25.15617561340332 19.69529151916504 23.98970222473145 22.04347991943359 21.7993049621582 L 17.79935264587402 18.45746040344238 Z" fill="#34a853" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tp366z =
    '<svg viewBox="13.4 11.0 12.8 12.5" ><path transform="translate(1.43, 1.17)" d="M 20.764892578125 22.32792663574219 C 23.22063064575195 20.03720474243164 24.81534385681152 16.62661552429199 24.81534385681152 12.25919914245605 C 24.81534385681152 11.46586799621582 24.69329261779785 10.61151123046875 24.51021575927734 9.818181991577148 L 12 9.818181991577148 L 12 15.00534439086914 L 19.20100212097168 15.00534439086914 C 18.84568023681641 16.74964332580566 17.89193534851074 18.1006908416748 16.52076530456543 18.98608207702637 L 20.764892578125 22.32792663574219 Z" fill="#4a90e2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e0gdnz =
    '<svg viewBox="0.0 7.4 5.9 12.0" ><path transform="translate(0.0, 0.79)" d="M 5.903886318206787 15.17287540435791 C 5.636878490447998 14.37679004669189 5.492290019989014 13.52363395690918 5.492290019989014 12.63557624816895 C 5.492290019989014 11.76098537445068 5.632526874542236 10.92024517059326 5.891823768615723 10.13453197479248 L 1.387300848960876 6.650023937225342 C 0.4884536564350128 8.451746940612793 0 10.4823169708252 0 12.63557624816895 C 0 14.78316593170166 0.4976206123828888 16.80889129638672 1.384472966194153 18.6043586730957 L 5.903886318206787 15.17287540435791 Z" fill="#fbbc05" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
String linkdnSvg =
    '<svg viewBox="0.0 0.0 19.2 18.4" ><path transform="translate(-27.07, -23.97)" d="M 46.27360534667969 35.22006607055664 L 46.27360534667969 42.32160949707031 L 42.15631866455078 42.32160949707031 L 42.15631866455078 35.69600296020508 C 42.15631866455078 34.03238296508789 41.56186676025391 32.89628219604492 40.07112121582031 32.89628219604492 C 38.93347930908203 32.89628219604492 38.25765991210938 33.66115570068359 37.95920562744141 34.40176773071289 C 37.85081481933594 34.66645050048828 37.82286834716797 35.03399276733398 37.82286834716797 35.40522003173828 L 37.82286834716797 42.3213005065918 L 33.70527648925781 42.3213005065918 C 33.70527648925781 42.3213005065918 33.76054382324219 31.09971046447754 33.70527648925781 29.9381275177002 L 37.82317352294922 29.9381275177002 L 37.82317352294922 31.69293975830078 C 37.81488800048828 31.70676040649414 37.80321502685547 31.72027015686035 37.79584503173828 31.73347282409668 L 37.82317352294922 31.73347282409668 L 37.82317352294922 31.69293975830078 C 38.37034606933594 30.85099983215332 39.34616088867188 29.64734840393066 41.53392028808594 29.64734840393066 C 44.24275207519531 29.64734840393066 46.27360534667969 31.41720771789551 46.27360534667969 35.22006607055664 L 46.27360534667969 35.22006607055664 Z M 29.39792251586914 23.9689998626709 C 27.98946762084961 23.9689998626709 27.06800079345703 24.89353942871094 27.06800079345703 26.10824394226074 C 27.06800079345703 27.29715728759766 27.96275329589844 28.24841117858887 29.34388160705566 28.24841117858887 L 29.37059783935547 28.24841117858887 C 30.80668830871582 28.24841117858887 31.69959831237793 27.29715728759766 31.69959831237793 26.10824394226074 C 31.67227172851562 24.89353942871094 30.80668640136719 23.9689998626709 29.39792251586914 23.9689998626709 L 29.39792251586914 23.9689998626709 Z M 27.31272125244141 42.32160949707031 L 31.42877960205078 42.32160949707031 L 31.42877960205078 29.9381275177002 L 27.31272125244141 29.9381275177002 L 27.31272125244141 42.32160949707031 Z" fill="#f1f2f2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';


class Shared {
  static SharedPreferences pref =
      SharedPreferences.getInstance() as SharedPreferences;
}





