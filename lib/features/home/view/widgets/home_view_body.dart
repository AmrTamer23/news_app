import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:news_app/features/home/view/widgets/custom_app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'breaking_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomAppBar(),
          Padding(
            padding:
                const EdgeInsets.only(top: 18, left: 12, right: 12, bottom: 12),
            child: Row(
              children: [
                const Text(
                  "Breaking News",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View all",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          ),
          const BreakingItem(),
        ],
      ),
    );
  }
}

// class BreakingListView extends StatelessWidget {
//   const BreakingListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemBuilder: (context, index) {},
//     );
//   }
// }
