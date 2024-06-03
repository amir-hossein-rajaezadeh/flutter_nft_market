import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_nft_market/screens/home_screen.dart';
import 'package:flutter_nft_market/screens/shared/build_center_text_widget.dart';
import 'package:flutter_nft_market/screens/states_screen.dart';
import 'package:flutter_nft_market/utils/my_colors.dart';
import 'package:flutter_nft_market/screens/shared/bottom_nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  int selectedScreenIndex = 0;
  double _genrateRandomInt = 0;

  @override
  void initState() {
    Timer.periodic(const Duration(milliseconds: 400), (Timer t) {
      setState(() {
        _genrateRandomInt = Random().nextInt(250) + 50;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 2100),
              width: _genrateRandomInt,
              height: _genrateRandomInt,
              decoration: BoxDecoration(
                color: MyColors.blurBackgroundColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 70, sigmaY: 70),
              child: selectedScreenIndex == 0
                  ? const HomeScreen()
                  : selectedScreenIndex == 1
                      ? const StateScreen()
                      : selectedScreenIndex == 2
                          ? buildCenterTextWidget("Search Page")
                          : buildCenterTextWidget("Profile Page"),
            ),
          ),
          BottomNaviagationBarWidget(
            onTapClick: (int index) {
              setState(() {
                selectedScreenIndex = index;
              });
            },
            selectedNavBarIndex: selectedScreenIndex,
          ),
          Positioned(
            bottom: 55,
            child: GestureDetector(
              onTap: () {},
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    height: 60,
                    child: Image.asset(
                      "assets/images/polygon.png",
                      color: const Color(0xFF512278),
                    ),
                  ),
                  const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 40,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
