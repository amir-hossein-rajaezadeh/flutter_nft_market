import 'dart:ui';

import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_nft_market/utils/my_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.8);

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 60),
            child: const Text(
              "NFT Market Place",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 32),
            child: ExpandablePageView.builder(
              animationDuration: const Duration(milliseconds: 300),
              controller: _pageController,
              onPageChanged: (index) => setState(() {
                selectedIndex = index;
              }),
              itemCount: 3,
              itemBuilder: (context, index) {
                return AnimatedContainer(
                  width: 280,
                  height: selectedIndex == index ? 220 : 200,
                  duration: const Duration(milliseconds: 270),
                  margin: const EdgeInsets.only(right: 10),
                  child: Container(
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: Image.asset(
                        "assets/images/background.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, top: 25),
            alignment: Alignment.topLeft,
            child: const Text(
              "Trending collections",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 213,
            child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.transparent.withOpacity(0.11),
                        // border: Border.all(
                        //   color: const Color(0xFF24224B),
                        // ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 9),
                            width: 160,
                            height: 160,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: Image.asset(
                                "assets/images/background.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 10, right: 20, left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Test",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      color: Colors.white),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(right: 2),
                                        child: const Icon(
                                          CupertinoIcons.heart_fill,
                                          color: Colors.red,
                                          size: 18,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "100",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey.shade500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
