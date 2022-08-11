import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSize appBarbottomLine() {
  var height = 0.5;

  return PreferredSize(
      child: Divider(
        thickness: height,
        height: height,
        color: Colors.grey,
      ),
      preferredSize: Size.fromHeight(height));
}
