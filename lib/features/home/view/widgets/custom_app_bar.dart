import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CustomButtonIcon(
            icon: const Icon(
              FontAwesomeIcons.bars,
              size: 21,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          const Spacer(),
          CustomButtonIcon(
            icon: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.1),
              child: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 21,
                color: Colors.black,
              ),
            ),
            onPressed: () {},
          ),
          CustomButtonIcon(
            icon: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.1),
              child: Stack(
                alignment: Alignment.topRight,
                children: const [
                  Icon(
                    FontAwesomeIcons.bell,
                    size: 21,
                    color: Colors.black,
                  ),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.red,
                  )
                ],
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class CustomButtonIcon extends StatelessWidget {
  const CustomButtonIcon({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final Widget icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      iconSize: 40,
      icon: CircleAvatar(
        backgroundColor: Colors.grey.withOpacity(0.1),
        child: icon,
      ),
    );
  }
}
