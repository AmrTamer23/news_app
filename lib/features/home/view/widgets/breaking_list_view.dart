import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'breaking_item.dart';

class BreakingListView extends StatelessWidget {
  const BreakingListView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              height: 250,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: pageController,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const BreakingItem();
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: 10,
              effect: const ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  dotColor: Color.fromARGB(39, 158, 158, 158),
                  activeDotColor: Colors.blue),
            )
          ],
        ),
      ],
    );
  }
}
