import 'package:flutter/material.dart';
import 'package:news_app/features/home/view/widgets/recommendation_item.dart';

class RecommendationListView extends StatelessWidget {
  const RecommendationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: RecommendationItem(),
        );
      },
    );
  }
}
