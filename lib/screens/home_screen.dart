import 'dart:ui';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nft_market/models/app_models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreeneState();
}

class _HomeScreeneState extends State<HomeScreen>
    with TickerProviderStateMixin {
  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.75);
  int selectedBannerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 60),
      child: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              "NFT Market Place",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 28),
            child: ExpandablePageView.builder(
              animationDuration: const Duration(milliseconds: 320),
              controller: _pageController,
              onPageChanged: (index) => setState(
                () {
                  selectedBannerIndex = index;
                },
              ),
              itemCount: AppModels().getBannerList().length,
              itemBuilder: (context, index) {
                final bannerItem = AppModels().getBannerList()[index];
                return AnimatedScale(
                  scale: selectedBannerIndex == index ? 1 : 0.88,
                  duration: const Duration(milliseconds: 350),
                  child: Container(
                    width: 280,
                    height: 200,
                    margin: const EdgeInsets.only(right: 0),
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
                            borderRadius: BorderRadius.circular(26),
                            child: Image.asset(
                              bannerItem.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            child: Text(
                              bannerItem.titile,
                              style: const TextStyle(
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
          _buildListTitleWidget("Trending Collections"),
          _buildListViewWidget(false),
          _buildListTitleWidget("Top Artists"),
          _buildListViewWidget(true),
        ],
      ),
    );
  }

  Container _buildListViewWidget(bool isArtist) {
    return Container(
      margin: const EdgeInsets.only(top: 6),
      height: 213,
      child: ListView.builder(
        itemCount: isArtist
            ? AppModels().getTopArtistList().length
            : AppModels().getTrendingNFTList().length,
        padding: const EdgeInsets.only(left: 0),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final nftItem = isArtist
              ? AppModels().getTopArtistList()[index]
              : AppModels().getTrendingNFTList()[index];
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                child: Container(
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade800.withOpacity(0.25),
                    border: Border.all(color: Colors.grey.shade800),
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
                            nftItem.image,
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
                            Text(
                              nftItem.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            if (!isArtist)
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
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
                                    Text(
                                      nftItem.likeCount.toString(),
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade500),
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
