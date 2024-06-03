import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nft_market/cubit/app_cubit.dart';

// ignore: must_be_immutable
class BottomNaviagationBarWidget extends StatelessWidget {
  BottomNaviagationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 4, left: 4, bottom: 6),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: SizedBox(
            height: 80,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.grey.shade700),
                  ),
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildNavBarIcon(
                        false,
                        0,
                      ),
                      buildNavBarIcon(
                        true,
                        1,
                      ),
                      buildNavBarIcon(
                        false,
                        2,
                      ),
                      buildNavBarIcon(
                        false,
                        3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNavBarIcon(
    bool hasMarginRight,
    int index,
  ) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => context.read<AppCubit>().setSelectedNavBarIndex(index),
          child: Padding(
            padding: EdgeInsets.only(bottom: 8, right: hasMarginRight ? 50 : 0),
            child: Icon(
              index == 0
                  ? CupertinoIcons.home
                  : index == 1
                      ? CupertinoIcons.chart_bar
                      : index == 2
                          ? CupertinoIcons.search
                          : CupertinoIcons.person,
              color: index == state.selectedNavBarIndex
                  ? Colors.white
                  : Colors.grey,
              size: 28,
            ),
          ),
        );
      },
    );
  }
}
