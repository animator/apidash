import 'package:flutter/material.dart';
import '../consts.dart';

Color getResponseStatusCodeColor(int? statusCode,
    {Brightness brightness = Brightness.light}) {
  Color col = kColorStatusCodeDefault;
  if (statusCode != null) {
    if (statusCode >= 200) {
      col = kColorStatusCode200;
    }
    if (statusCode >= 300) {
      col = kColorStatusCode300;
    }
    if (statusCode >= 400) {
      col = kColorStatusCode400;
    }
    if (statusCode >= 500) {
      col = kColorStatusCode500;
    }
  }
  if (brightness == Brightness.dark) {
    col = Color.alphaBlend(col.withOpacity(kOpacityDarkModeBlend), kColorWhite);
  }
  return col;
}

Color getHTTPMethodColor(HTTPVerb method,
    {Brightness brightness = Brightness.light}) {
  Color col;
  switch (method) {
    case HTTPVerb.get:
      col = kColorHttpMethodGet;
      break;
    case HTTPVerb.head:
      col = kColorHttpMethodHead;
      break;
    case HTTPVerb.post:
      col = kColorHttpMethodPost;
      break;
    case HTTPVerb.put:
      col = kColorHttpMethodPut;
      break;
    case HTTPVerb.patch:
      col = kColorHttpMethodPatch;
      break;
    case HTTPVerb.delete:
      col = kColorHttpMethodDelete;
      break;
  }
  if (brightness == Brightness.dark) {
    col = Color.alphaBlend(col.withOpacity(kOpacityDarkModeBlend), kColorWhite);
  }
  return col;
}
