import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:news_app/features/home/view/widgets/custom_app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/features/home/view/widgets/recommendation_item.dart';
import 'package:news_app/features/home/view/widgets/recommendation_list_view.dart';

import 'breaking_item.dart';
import 'breaking_list_view.dart';

class NewsViewBody extends StatelessWidget {
  const NewsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CustomAppBar(),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 18, left: 12, right: 12, bottom: 12),
                  child: Row(
                    children: [
                      const Text(
                        "Breaking News",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "View all",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ))
                    ],
                  ),
                ),
                const BreakingListView(),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 18, left: 12, right: 12, bottom: 12),
                  child: Row(
                    children: [
                      const Text(
                        "Recommendation",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "View all",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ))
                    ],
                  ),
                ),
                const RecommendationListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
