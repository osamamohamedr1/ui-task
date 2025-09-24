import 'package:flutter/material.dart';
import 'package:ui_taski_2nd_week/core/utils/assets.dart';
import 'package:ui_taski_2nd_week/core/utils/colors_manager.dart';
import 'package:ui_taski_2nd_week/features/details/presentation/views/upgrade_plan_view.dart';
import 'package:ui_taski_2nd_week/features/details/presentation/views/widgets/custom_button.dart';

class DetailsBottomBar extends StatelessWidget {
  const DetailsBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: ColorsManager.darkBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return UpgradePlanView();
                  },
                ),
              );
            },
            title: 'Preview',
            image: Assets.svgsPreview,
          ),
          CustomButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return UpgradePlanView();
                  },
                ),
              );
            },
            title: 'Watch Now',
            padding: 13,
            image: Assets.svgsWatch,
            color: ColorsManager.blue,
          ),
        ],
      ),
    );
  }
}
