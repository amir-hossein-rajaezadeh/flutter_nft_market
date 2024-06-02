import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_nft_market/screens/home_screen.dart';
import 'package:flutter_nft_market/screens/states_screen.dart';
import 'package:flutter_nft_market/utils/my_colors.dart';
import 'package:flutter_nft_market/widgets/bottom_nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  int selectedScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Center(
            child: Container(
              width: 215,
              height: 215,
              decoration: BoxDecoration(
                color: MyColors.blurBackgroundColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
              child: selectedScreen == 0 ? const HomeScreen() : StateScreen(),
            ),
          ),
          BottomNaviagationBarWidget(
            onTapClick: () {
              setState(() {
                selectedScreen = 1;
              });
            },
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
