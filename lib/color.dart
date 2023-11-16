import 'package:flutter/material.dart';

const Color primary = Color(0xff980a0a);
const Color primaryLight = Color(0xffce2525);
const Color secondPrimary = Color(0xffFDD363);
const Color white = Color(0xffffffff);
const Color black = Color(0xff010100);
const Color background = Color(0xffffffff);
const Color red = Color(0xffC83025);
const Color yellow = Color(0xffE9AB17);
const Color purple = Color(0xff6A0DAD);
const Color orange = Color(0xffFF8000);
const Color pale = Color(0xffFAF9DE);

Gradient gradientPrimary = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[primaryLight, primary]);

Gradient gradientFullPrimary = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[primary, primary]);
