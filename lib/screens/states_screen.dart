import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                style: TextStyle(color: Colors.white, fontSize: 20),
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
              const Icon(CupertinoIcons.doc_chart_fill),
              Container(
                margin: const EdgeInsets.only(left: 6),
                child: const Text(
                  "Activity",
                  style: TextStyle(color: Colors.white, fontSize: 20),
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
                    margin: const EdgeInsets.only(left: 40),
                    alignment: Alignment.center,
                    child: const Text(
                      "Stats",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: const Icon(
                    Icons.dehaze_outlined,
                    color: Colors.white,
                    size: 30,
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
                  // labelPadding:
                  //     const EdgeInsets.symmetric(horizontal: kIsWeb ? 100 : 30),

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
            child: TabBarView(controller: _tabController, children: [
              Container(
                margin: const EdgeInsets.only(top: 24),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 20, left: 20),
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                              height: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.grey),
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
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  right: 0,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: const Icon(
                                        CupertinoIcons.link,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 6, left: 6),
                                      child: const Text(
                                        "All chains",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Container(
                                      child: const Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    _buildListTitleWidget("Top seller"),
                    _buildListViewWidget(),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
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
