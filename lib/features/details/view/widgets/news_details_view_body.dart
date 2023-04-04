import 'dart:ui';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/features/home/view/widgets/custom_app_bar.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: ImageAndDetailsSection()),
          SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: true,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://pluspng.com/img-png/cnn-logo-png-cnn-logos-brands-and-logotypes-4390x4390.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "CNN Indonesia",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SvgPicture.asset("assets/imgs/verfied.svg"),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non nunc vitae mauris pretium mollis. Nulla facilisi. Suspendisse sollicitudin, mauris vitae maximus rhoncus, nisl nibh dapibus ex, vel sagittis tellus purus id magna. Donec id tincidunt enim. Quisque blandit, magna in semper tincidunt, mauris diam efficitur ante, ac sagittis nisl ipsum nec lorem. Vivamus suscipit ullamcorper risus, eget eleifend mi mattis ut. Suspendisse tincidunt dolor sit amet metus iaculis, ac dignissim turpis hendrerit. Proin eget enim tortor. Sed tristique elit a elit aliquam, nec feugiat purus rhoncus. Etiam venenatis, nulla ut accumsan dictum, lectus sapien blandit dolor, quis feugiat ex mi ac dui. Donec ut est justo. Sed sit amet leo tristique, posuere mauris id, congue mauris. Mauris dictum eros eu commodo tincidunt. Aenean dignissim enim eu dui commodo, ac ullamcorper tellus sagittis. Sed dictum commodo nisi, sit amet efficitur orci luctus ut",
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ImageAndDetailsSection extends StatelessWidget {
  const ImageAndDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          "https://media.cnn.com/api/v1/images/stellar/prod/230324121930-01-planetary-alignment-night-sky-2020.jpg?c=16x9&q=h_540,w_960,c_fill/f_webp",
          height: MediaQuery.of(context).size.height / 2,
          fit: BoxFit.fitHeight,
        ),
        Positioned(
          bottom: 125,
          left: 20,
          child: Container(
            alignment: Alignment.center,
            width: 70,
            height: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.blue,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: const Text(
              "Science",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Positioned(
          bottom: 55,
          left: 20,
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 40,
            child: Text(
              "A stunning lineup of five planets will decorate the night sky",
              maxLines: 2,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
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
        ),
        Positioned(
          bottom: 30,
          left: 20,
          child: Row(
            children: const [
              Text(
                "Trending",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 2,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "6 hours ago",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
// BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//                 child: Container(
//                   width: 50,
//                   height: 50,
//                   color: Colors.white.withOpacity(0.1),
//                   child: const Icon(
//                     Icons.favorite_border,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),