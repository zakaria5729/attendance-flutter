import 'package:flutter/material.dart';

typedef JsonMap = Map<String, dynamic>;

void closeSoftKeyBoard() {
  FocusManager.instance.primaryFocus?.unfocus();
}
