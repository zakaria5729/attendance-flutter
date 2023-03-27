// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "name": "Name",
  "submit": "Submit",
  "stores": "Stores",
  "userId": "User Id",
  "dismiss": "Dismiss",
  "tryAgain": "Try again",
  "attendance": "Attendance",
  "pleaseWait": "Please wait...",
  "noDataFound": "No data found",
  "pageNotFound": "Page Not found",
  "somethingWentWrong": "Something went wrong",
  "emptyFieldWarning": " can't be left empty",
  "invlidEmailAddress": "Invalid Email Address",
  "internalServerError": "Internal Server Error",
  "apiFormatException": "Api Response Format Exception",
  "maxLengthWarning": "Characters have to be 8 or more",
  "internetConnectivityProblem": "Internet Connection Problem",
  "canNotContainWhiteSpace": "Can't be left any blank space here",
  "specialCharWarning": "Minimum a digit and an special character are required",
  "checkInternetConnectionFirst": "Check your internet connection and try again",
  "locationDisabled": "Location service are disabled. Please enable your location first.",
  "locationDenied": "Location permission are denied. Please give the permission so that we can detect your current location.",
  "locationPermanentlyDenied": "Location permission are permanently denied. Please go app settings and give the location permission so that we can detect your current location."
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en};
}
