import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNaviagationBarWidget extends StatelessWidget {
  BottomNaviagationBarWidget({super.key, required this.onTapClick});
  void Function() onTapClick;

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
                      buildNavBarIcon(CupertinoIcons.home, false, context),
                      buildNavBarIcon(CupertinoIcons.chart_bar, true, context),
                      buildNavBarIcon(CupertinoIcons.search, false, context),
                      buildNavBarIcon(CupertinoIcons.person, false, context),
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

  Widget buildNavBarIcon(
      IconData iconWidget, bool hasMarginRight, BuildContext context) {
    return GestureDetector(
      onTap: onTapClick,
      child: Padding(
        padding: EdgeInsets.only(bottom: 8, right: hasMarginRight ? 50 : 0),
        child: Icon(
          iconWidget,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}
