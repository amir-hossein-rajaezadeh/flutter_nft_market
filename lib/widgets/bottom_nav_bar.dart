import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNaviagationBarWidget extends StatelessWidget {
  const BottomNaviagationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 4, left: 4, bottom: 6),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
          child: SizedBox(
            height: 80,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.grey),
                  ),
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildNavBarIcon(CupertinoIcons.home, false),
                      buildNavBarIcon(CupertinoIcons.search, true),
                      buildNavBarIcon(CupertinoIcons.chart_bar, false),
                      buildNavBarIcon(CupertinoIcons.person, false),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNavBarIcon(IconData iconWidget, bool hasMarginRight) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8, right: hasMarginRight ? 50 : 0),
      child: Icon(
        iconWidget,
        color: Colors.white,
        size: 28,
      ),
    );
  }
}
