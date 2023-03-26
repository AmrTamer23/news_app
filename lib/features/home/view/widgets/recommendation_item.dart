import 'package:flutter/material.dart';

class RecommendationItem extends StatelessWidget {
  const RecommendationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://media.cnn.com/api/v1/images/stellar/prod/230324121930-01-planetary-alignment-night-sky-2020.jpg?c=16x9&q=h_540,w_960,c_fill/f_webp"),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Science",
                style: TextStyle(color: Colors.black38),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                width: 200,
                child: Text(
                  "A stunning lineup of five planets will decorate the night sky",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Amr Tamer",
                    style: TextStyle(color: Colors.black38, fontSize: 12),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.black38,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Mar 26, 2023",
                    style: TextStyle(color: Colors.black38, fontSize: 12),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
