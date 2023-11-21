import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';
import 'package:ui_3d/screens/home_page.dart';

class AppBottomNabBarWidget extends StatefulWidget {
  const AppBottomNabBarWidget(
      {super.key,
      required this.mainPageController,
      required this.textsPageController,
      required this.o3dController});
  final PageController mainPageController;
  final PageController textsPageController;
  final O3DController o3dController;

  @override
  State<AppBottomNabBarWidget> createState() => _AppBottomNabBarWidgetState();
}

class _AppBottomNabBarWidgetState extends State<AppBottomNabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: page,
      onTap: (newPage) {
        widget.mainPageController.animateToPage(newPage,
            duration: const Duration(milliseconds: 500), curve: Curves.ease);
        widget.textsPageController.animateToPage(newPage,
            duration: const Duration(milliseconds: 500), curve: Curves.ease);

        if (newPage == 0) {
          widget.o3dController.cameraTarget(-.25, 1.5, 1.5);
          widget.o3dController.cameraOrbit(0, 90, 1);
        } else if (newPage == 1) {
          widget.o3dController.cameraTarget(0, 1.8, 0);
          widget.o3dController.cameraOrbit(-90, 90, 1.5);
        } else if (newPage == 2) {
          widget.o3dController.cameraTarget(0, 3, 0);
          widget.o3dController.cameraOrbit(0, 90, -3);
        }

        setState(() {
          page = newPage;
        });
      },
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.analytics_outlined),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timer_outlined),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'home',
        ),
      ],
    );
  }
}
