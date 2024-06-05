import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nft_market/cubit/app_cubit.dart';
import 'package:flutter_nft_market/models/app_models.dart';
import '../utils/my_colors.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({super.key, required this.nftItem});
  final NFTModel nftItem;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
            children: [
              Center(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 2200),
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
                  filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                  child: Container(),
                ),
              ),
              CustomScrollView(
                scrollBehavior: CupertinoScrollBehavior(),
                slivers: <Widget>[
                  AppBarWidget(context),
                  SliverPadding(
                    padding: EdgeInsets.only(top: 18),
                    sliver: DecoratedSliver(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade800.withOpacity(0.3),
                      ),
                      sliver: SliverFillRemaining(
                        hasScrollBody: true,
                        fillOverscroll: true,
                        child: ListView(
                          physics: NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.only(top: 0),
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              margin:
                                  EdgeInsets.only(top: 16, left: 18, right: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        widget.nftItem.title,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 28,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ],
                                  ),
                                  if (widget.nftItem.price != null)
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: 18,
                                                height: 20,
                                                margin: const EdgeInsets.only(
                                                    right: 2),
                                                child: Image.asset(
                                                  "assets/images/eth_logo.png",
                                                  fit: BoxFit.cover,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                widget.nftItem.price.toString(),
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "${widget.nftItem.changePercent.toString()}%",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color:
                                                    widget.nftItem.isOnBenefit!
                                                        ? Colors.green
                                                        : Colors.red,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 8, right: 20, left: 20, bottom: 14),
                              child: Text(
                                widget.nftItem.desc!,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  height: 1.7,
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }

  SliverAppBar AppBarWidget(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      iconTheme: CupertinoIconThemeData(color: Colors.transparent),
      expandedHeight: 280.0,
      flexibleSpace: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.nftItem.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Hero(
            tag: widget.nftItem.title,
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 65),
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.nftItem.image),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(33),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, top: 55, right: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black.withOpacity(0.22),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              String.fromCharCode(Icons.arrow_back.codePoint),
                              style: TextStyle(
                                inherit: false,
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontFamily: Icons.arrow_back.fontFamily,
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black.withOpacity(0.28),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.red,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
