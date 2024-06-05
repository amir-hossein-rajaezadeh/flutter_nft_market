import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nft_market/cubit/app_cubit.dart';
import 'package:flutter_nft_market/screens/home_screen.dart';
import 'package:flutter_nft_market/screens/shared/build_center_text_widget.dart';
import 'package:flutter_nft_market/screens/states_screen.dart';
import 'package:flutter_nft_market/utils/my_colors.dart';
import 'package:flutter_nft_market/screens/shared/bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    context.read<AppCubit>().genrateRandomInt();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Center(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 2100),
                  width: state.genratedRandomInt,
                  height: state.genratedRandomInt,
                  decoration: BoxDecoration(
                    color: MyColors.blurBackgroundColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              ClipRRect(
                child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 70, sigmaY: 70),
                    child: state.selectedNavBarIndex == 0
                        ? const HomeScreen()
                        : state.selectedNavBarIndex == 1
                            ? const StateScreen()
                            : state.selectedNavBarIndex == 2
                                ? buildCenterTextWidget("Search Page")
                                : buildCenterTextWidget("Profile Page")),
              ),
              BottomNaviagationBarWidget(),
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
          );
        },
      ),
    );
  }
}
