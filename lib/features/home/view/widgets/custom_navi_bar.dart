import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNaviBar extends StatefulWidget {
  const CustomNaviBar({super.key});

  @override
  State<CustomNaviBar> createState() => _CustomNaviBarState();
}

class _CustomNaviBarState extends State<CustomNaviBar> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      showElevation: true,
      containerHeight: 65,
      selectedIndex: _currentIndex,
      onItemSelected: (index) {
        setState(() => _currentIndex = index);
        _pageController.jumpToPage(index);
      },
      items: [
        BottomNavyBarItem(
            icon: const Icon(FontAwesomeIcons.house),
            textAlign: TextAlign.center,
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.blue),
            ),
            activeColor: Colors.blue,
            inactiveColor: Colors.black38),
        BottomNavyBarItem(
            icon: const Icon(FontAwesomeIcons.globe),
            title: const Text('Users'),
            activeColor: Colors.purpleAccent,
            inactiveColor: Colors.black38),
        BottomNavyBarItem(
            icon: const Icon(FontAwesomeIcons.bookmark),
            title: const Text('Messages'),
            activeColor: Colors.pink,
            inactiveColor: Colors.black38),
        BottomNavyBarItem(
            icon: const Icon(FontAwesomeIcons.user),
            title: const Text('Settings'),
            activeColor: Colors.deepOrangeAccent,
            inactiveColor: Colors.black38),
      ],
    );
  }
}
