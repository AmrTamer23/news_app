import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:news_app/features/home/view/widgets/custom_navi_bar.dart';
import 'package:news_app/features/home/view/widgets/home_view_body.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NewsViewBody(),
      bottomNavigationBar: CustomNaviBar(),
    );
  }
}
