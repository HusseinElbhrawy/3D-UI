import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';
import 'package:ui_3d/widget/app_bottom_nav_bar_widget.dart';
import 'package:ui_3d/widget/first_details_widget.dart';
import 'package:ui_3d/widget/first_list_widget.dart';
import 'package:ui_3d/widget/inverted_circle_clipper.dart';
import 'package:ui_3d/widget/second_details_widget.dart';
import 'package:ui_3d/widget/second_list_widget.dart';
import 'package:ui_3d/widget/third_details_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int page = 0;

class _MyHomePageState extends State<MyHomePage> {
  O3DController o3dController = O3DController();
  PageController mainPageController = PageController();
  PageController textsPageController = PageController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SafeArea(
        child: Stack(
          children: [
            O3D(
              src: 'assets/disney_style_character.glb',
              controller: o3dController,
              ar: false,
              autoPlay: true,
              autoRotate: false,
              cameraControls: false,
              cameraTarget: CameraTarget(-.25, 1.5, 1.5),
              cameraOrbit: CameraOrbit(0, 90, 1),
            ),
            PageView(
              controller: mainPageController,
              onPageChanged: (value) {
                mainPageController.animateToPage(
                  value,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
                textsPageController.animateToPage(
                  value,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );

                if (value == 0) {
                  o3dController.cameraTarget(-.25, 1.5, 1.5);
                  o3dController.cameraOrbit(0, 90, 1);
                } else if (value == 1) {
                  o3dController.cameraTarget(0, 1.8, 0);
                  o3dController.cameraOrbit(-90, 90, 1.5);
                } else if (value == 2) {
                  o3dController.cameraTarget(0, 3, 0);
                  o3dController.cameraOrbit(0, 90, -3);
                }

                setState(() {
                  page = value;
                });
              },
              children: [
                FirstListWidget(height: height),
                SecondListWidget(height: height),
                ClipPath(
                  clipper: InvertedCircleClipper(),
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Container(
              width: 100,
              height: double.infinity,
              margin: const EdgeInsets.all(12),
              child: PageView(
                controller: textsPageController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  FirstDetailsWidget(),
                  SecondDetailsWidget(),
                  ThirdDetailsWidget(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNabBarWidget(
        mainPageController: mainPageController,
        textsPageController: textsPageController,
        o3dController: o3dController,
      ),
    );
  }
}
