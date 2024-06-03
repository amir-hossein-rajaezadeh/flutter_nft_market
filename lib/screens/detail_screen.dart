import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nft_market/cubit/app_cubit.dart';
import 'package:flutter_nft_market/models/app_models.dart';
import '../utils/my_colors.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    context.read<AppCubit>().genrateRandomInt();
    super.initState();
  }

  NFTModel nftItem = AppModels().getTrendingNFTList()[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Center(
              //   child: GestureDetector(
              //     onTap: () {
              //       Navigator.pop(context);
              //     },
              //     child: Icon(
              //       Icons.arrow_back,
              //       color: Colors.white,
              //       size: 40,
              //     ),
              //   ),
              // ),
              // Center(
              //   child: AnimatedContainer(
              //     duration: const Duration(milliseconds: 2100),
              //     width: state.genratedRandomInt,
              //     height: state.genratedRandomInt,
              //     decoration: BoxDecoration(
              //       color: MyColors.blurBackgroundColor,
              //       borderRadius: BorderRadius.circular(100),
              //     ),
              //   ),
              // ),
              ClipRRect(
                child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 70, sigmaY: 70),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Hero(
                          tag: "false0a",
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey.shade800.withOpacity(0.25),
                                  border:
                                      Border.all(color: Colors.grey.shade800),
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
                                      margin: const EdgeInsets.only(
                                          top: 10, right: 20, left: 20),
                                      child: Material(
                                        color: Colors.transparent,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              nftItem.title,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                  color: Colors.white),
                                            ),
                                            if (true)
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 3),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              right: 2),
                                                      child: const Icon(
                                                        CupertinoIcons
                                                            .heart_fill,
                                                        color: Colors.red,
                                                        size: 18,
                                                      ),
                                                    ),
                                                    Text(
                                                      nftItem.likeCount
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .grey.shade500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back))
                      ],
                    )),
              ),
              // BottomNaviagationBarWidget(
              //   onTapClick: (int index) {
              //     setState(() {
              //       selectedScreenIndex = index;
              //     });
              //   },
              //   selectedNavBarIndex: selectedScreenIndex,
              // ),
              // Positioned(
              //   bottom: 55,
              //   child: GestureDetector(
              //     onTap: () {},
              //     child: Stack(
              //       alignment: Alignment.center,
              //       children: [
              //         Container(
              //           alignment: Alignment.topCenter,
              //           height: 60,
              //           child: Image.asset(
              //             "assets/images/polygon.png",
              //             color: const Color(0xFF512278),
              //           ),
              //         ),
              //         const Icon(
              //           Icons.add,
              //           color: Colors.white,
              //           size: 40,
              //         )
              //       ],
              //     ),
              //   ),
              // )
            ],
          );
        },
      ),
    );
  }
}
