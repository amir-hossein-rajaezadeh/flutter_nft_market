import 'dart:ui';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreeneState();
}

class _HomeScreeneState extends State<HomeScreen>
    with TickerProviderStateMixin {
  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.8);
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 20),
          child: const Text(
            "NFT Market Place",
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 32),
          child: ExpandablePageView.builder(
            animationDuration: const Duration(milliseconds: 320),
            controller: _pageController,
            onPageChanged: (index) => setState(
              () {
                selectedIndex = index;
              },
            ),
            itemCount: 3,
            itemBuilder: (context, index) {
              return AnimatedScale(
                scale: selectedIndex == index ? 1 : 0.88,
                duration: const Duration(milliseconds: 350),
                child: Container(
                  width: 280,
                  height: 200,
                  margin: const EdgeInsets.only(right: 10),
                  child: Container(
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.asset(
                            "assets/images/background.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                          bottom: 8,
                          child: Text(
                            "Abstract",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        _buildListTitleWidget("Trending collections"),
        _buildListViewWidget(),
        _buildListTitleWidget("Top seller"),
        _buildListViewWidget(),
      ],
    );
  }

  Container _buildListViewWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 6),
      height: 213,
      child: ListView.builder(
        itemCount: 10,
        padding: const EdgeInsets.only(left: 0),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                child: Container(
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.11),
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
                        margin:
                            const EdgeInsets.only(top: 10, right: 20, left: 20),
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
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 2),
                                  child: const Icon(
                                    CupertinoIcons.heart_fill,
                                    color: Colors.red,
                                    size: 18,
                                  ),
                                ),
                                Text(
                                  "100",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container _buildListTitleWidget(String titleValue) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 25),
      alignment: Alignment.topLeft,
      child: Text(
        titleValue,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
