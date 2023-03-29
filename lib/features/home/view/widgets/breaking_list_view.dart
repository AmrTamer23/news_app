import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'breaking_item.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:dots_indicator/dots_indicator.dart';

class BreakingListView extends StatefulWidget {
  const BreakingListView({super.key});

  @override
  State<BreakingListView> createState() => _BreakingListViewState();
}

class _BreakingListViewState extends State<BreakingListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              child: CarouselSlider.builder(
                itemCount: 10,
                itemBuilder: (context, index, realIndex) {
                  return const BreakingItem();
                },
                options: CarouselOptions(
                  viewportFraction: 0.869,
                  autoPlay: false,
                  height: 230,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            DotsIndicator(
              dotsCount: 10,
              position: currentIndex.toDouble(),
              decorator: DotsDecorator(
                size: const Size.square(11.0),
                activeSize: const Size(20.0, 9.0),
                color: Colors.black12,
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
            /*
            SmoothPageIndicator(
              controller: pageController,
              count: 10,
              effect: const ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  dotColor: Color.fromARGB(39, 158, 158, 158),
                  activeDotColor: Colors.blue),
            )
            */
          ],
        ),
      ],
    );
  }
}
