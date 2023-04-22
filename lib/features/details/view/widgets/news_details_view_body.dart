import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:news_app/features/details/view/widgets/news_details_app_bar.dart';
import 'package:news_app/features/home/view/widgets/custom_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'news_details_content_section.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const Positioned.fill(
        child: CustomScrollView(
          slivers: [
            NewsDetailsAppBar(),
            NewsDetailsContentSection(),
          ],
        ),
      ),
      Positioned(
        bottom: 0,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width,
          child: DecoratedBox(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                Colors.white,
                Colors.white.withOpacity(0),
              ]))),
        ),
      )
    ]);
  }
}
