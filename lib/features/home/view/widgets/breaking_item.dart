import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class BreakingItem extends StatelessWidget {
  const BreakingItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.black87,
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://media.cnn.com/api/v1/images/stellar/prod/230324121930-01-planetary-alignment-night-sky-2020.jpg?c=16x9&q=h_540,w_960,c_fill/f_webp"))),
        ),
        Positioned(
          top: 18,
          left: 18,
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
          bottom: 18,
          left: 18,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "CNN Indonesia",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  SvgPicture.asset("assets/imgs/verfied.svg"),
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
                  const Text(
                    "6 hours ago",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
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
            ],
          ),
        ),
      ],
    );
  }
}
