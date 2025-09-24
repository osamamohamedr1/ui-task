import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:ui_taski_2nd_week/core/utils/assets.dart';
import 'package:ui_taski_2nd_week/core/utils/colors_manager.dart';
import 'package:ui_taski_2nd_week/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ColorsManager.lighterBlue, Colors.white],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 0,
              child: SvgPicture.asset(Assets.svgsStar1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: HomeViewBody(),
            ),
          ],
        ),
      ),
    );
  }
}
