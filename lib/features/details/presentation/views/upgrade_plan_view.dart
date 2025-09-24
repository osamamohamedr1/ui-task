import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:ui_taski_2nd_week/core/utils/assets.dart';
import 'package:ui_taski_2nd_week/core/utils/colors_manager.dart';
import 'package:ui_taski_2nd_week/features/details/presentation/views/widgets/upgrade_plan_body.dart';

class UpgradePlanView extends StatelessWidget {
  const UpgradePlanView({super.key});

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
              top: 170,
              child: SvgPicture.asset(Assets.svgsStar2),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: SvgPicture.asset(Assets.svgsStar3),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: UpgradePlanBody(),
            ),
          ],
        ),
      ),
    );
  }
}
