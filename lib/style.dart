import 'package:flutter/material.dart';

const largeTextSize = 22.0;
const mediumTextSize = 16.0;
const smallTextSize = 12.0;

const String fontNameDefault = 'Montserrat';

const Color textColorDark = Colors.black;
const Color textColorLight = Colors.white;
const Color textColorAccent = Colors.red;
const Color textColorFaint = Color.fromRGBO(125, 125, 125, 1.0);

const defaultPaddingHorizontal = 12.0;

const appBarTextStyle = TextStyle(
  fontFamily: fontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: mediumTextSize,
  color: Colors.white,
);

const titleTextStyle = TextStyle(
  fontFamily: fontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: largeTextSize,
  color: textColorDark,
);

const subtitleTextStyle = TextStyle(
  fontFamily: fontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: mediumTextSize,
  color: textColorAccent,
);

const captionTextStyle = TextStyle(
  fontFamily: fontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: smallTextSize,
  color: textColorDark,
);

const bodyTextStyle = TextStyle(
  fontFamily: fontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: smallTextSize,
  color: Colors.black,
);

