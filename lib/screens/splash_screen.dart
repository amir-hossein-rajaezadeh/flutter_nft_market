import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_nft_market/screens/main_page.dart';
import 'package:flutter_nft_market/utils/my_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/background.png",
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 110,
            ),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Welcome to \n NFT Marketplace",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      height: 1.1),
                ),
                const Spacer(),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 110, right: 28, left: 28),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent.withOpacity(0.11),
                          ),
                          height: 210,
                          child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: const Text(
                                    "Explore and Mint NFTs",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 20, right: 20, left: 20),
                                  child: const Text(
                                    "You can buy and sell the NFTs of the best artists in the world.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: MyColors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 26, right: 65, left: 65),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (_, __, ___) =>
                                              MainPage(),
                                          transitionDuration:
                                              Duration(milliseconds: 400),
                                          transitionsBuilder: (_, a, __, c) =>
                                              FadeTransition(
                                                  opacity: a, child: c),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color:
                                            MyColors.lightBlue.withOpacity(0.1),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Get started now",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
