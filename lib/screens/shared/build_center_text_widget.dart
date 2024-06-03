import 'package:flutter/material.dart';

Center buildCenterTextWidget(String title) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }