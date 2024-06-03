import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nft_market/models/app_models.dart';
import 'package:flutter_nft_market/screens/shared/build_center_text_widget.dart';
import 'package:flutter_nft_market/utils/my_colors.dart';

class StateScreen extends StatefulWidget {
  const StateScreen({super.key});

  @override
  State<StateScreen> createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen>
    with SingleTickerProviderStateMixin {
  final List<Tab> tabList = [
    Tab(
      child: SizedBox(
        width: 120,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.bar_chart),
            Container(
              margin: const EdgeInsets.only(left: 6),
              child: const Text(
                "Ranking",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    ),
    Tab(
      child: Container(
        child: SizedBox(
          width: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ImageIcon(
                AssetImage("assets/icons/analyze.png"),
              ),
              Container(
                margin: const EdgeInsets.only(left: 6),
                child: const Text(
                  "Activity",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  late final TabController _tabController =
      TabController(vsync: this, length: tabList.length);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabList.length,
      initialIndex: 0,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 60),
                    alignment: Alignment.center,
                    child: Text(
                      "Stats",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey.shade200,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: ImageIcon(
                    const AssetImage("assets/icons/menu.png"),
                    size: 30,
                    color: Colors.grey.shade200,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                TabBar(
                  tabs: tabList,
                  indicatorWeight: 5,
                  dividerHeight: 0.2,
                  dividerColor: MyColors.borderColor,
                  controller: _tabController,
                  tabAlignment: TabAlignment.fill,
                  labelColor: Colors.white,
                  enableFeedback: true,
                  unselectedLabelColor: Colors.grey,
                  labelStyle: const TextStyle(fontWeight: FontWeight.w700),
                  unselectedLabelStyle: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
                controller: _tabController,
                children: [rankingTab(), activityTab()]),
          )
        ],
      ),
    );
  }

  Padding activityTab() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 180),
      child: buildCenterTextWidget("No Activity"),
    );
  }

  Container rankingTab() {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          _buildCategoriesWIdget(),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                  right: 20, left: 20, top: 16, bottom: 60),
              decoration: BoxDecoration(
                color: Colors.grey.shade400.withOpacity(0.055),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: MyColors.borderColor),
              ),
              child: ListView.builder(
                itemCount: AppModels().getRankingNFTList().length,
                padding: const EdgeInsets.only(top: 6, left: 10, right: 14),
                itemBuilder: (context, index) {
                  final nftItem = AppModels().getRankingNFTList()[index];
                  return Container(
                    margin: EdgeInsets.only(
                        top: index == 0 ? 12 : 20, bottom: index == 9 ? 30 : 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "#${index + 1}",
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 19),
                            ),
                            Container(
                              width: 55,
                              height: 55,
                              margin: const EdgeInsets.only(left: 8),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      nftItem.image,
                                    ),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    nftItem.title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 1,
                                  ),
                                  const Text(
                                    "view info",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 18,
                                      height: 20,
                                      margin: const EdgeInsets.only(right: 2),
                                      child: Image.asset(
                                        "assets/images/eth_logo.png",
                                        fit: BoxFit.cover,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      nftItem.price.toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                                Text(
                                  "${nftItem.changePercent.toString()}%",
                                  style: TextStyle(
                                      color: nftItem.isOnBenefit!
                                          ? Colors.green
                                          : Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _buildCategoriesWIdget() {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: MyColors.borderColor),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      CupertinoIcons.link,
                      color: Colors.white,
                      size: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 6, left: 6),
                      child: const Text(
                        "All categories",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Flexible(
            child: Container(
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: MyColors.borderColor),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      CupertinoIcons.link,
                      color: Colors.white,
                      size: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 6, left: 6),
                      child: const Text(
                        "All chains",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
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
