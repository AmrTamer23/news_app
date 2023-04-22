import 'package:flutter/material.dart';

import '../../../home/view/widgets/custom_app_bar.dart';

class NewsDetailsAppBar extends StatelessWidget {
  const NewsDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height * 0.4,
      pinned: true,
      collapsedHeight: MediaQuery.of(context).size.height * 0.1,
      leading: CustomButtonIcon(
          icon: const Icon(Icons.chevron_left, color: Colors.white, size: 30),
          onPressed: () {}),
      actions: [
        CustomButtonIcon(
            icon: const Icon(Icons.bookmark_border,
                color: Colors.white, size: 30),
            onPressed: () {}),
        CustomButtonIcon(
          icon: const Icon(Icons.more_horiz, color: Colors.white, size: 30),
          onPressed: () {},
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Positioned.fill(
                child: Image.network(
              "https://media.cnn.com/api/v1/images/stellar/prod/230324121930-01-planetary-alignment-night-sky-2020.jpg?c=16x9&q=h_540,w_960,c_fill/f_webp",
              fit: BoxFit.cover,
            )),
            Positioned(
              bottom: 20,
              left: 18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 70,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Text(
                      "Science",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: Text(
                      "A stunning lineup of five planets will decorate the night sky",
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: const Offset(2, 2),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "CNN Indonesia",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8)),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const CircleAvatar(
                              radius: 2.5,
                              backgroundColor: Colors.white,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "6 hours ago",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8)),
                            ),
                          ],
                        ),
                      ])
                ], //
              ),
            ),
          ],
        ),
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: SizedBox(
          height: 10,
          width: double.infinity,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
