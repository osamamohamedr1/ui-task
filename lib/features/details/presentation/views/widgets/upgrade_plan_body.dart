import 'package:flutter/material.dart';
import 'package:ui_taski_2nd_week/core/utils/assets.dart';
import 'package:ui_taski_2nd_week/core/utils/spacing.dart';
import 'package:ui_taski_2nd_week/features/details/presentation/views/widgets/continue_button.dart';
import 'package:ui_taski_2nd_week/features/details/presentation/views/widgets/plans_list.dart';
import 'package:ui_taski_2nd_week/features/details/presentation/views/widgets/title_description.dart';
import 'package:ui_taski_2nd_week/features/details/presentation/views/widgets/upgrade_header.dart';

class UpgradePlanBody extends StatelessWidget {
  const UpgradePlanBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpace(60),
          UpgradeHeader(),
          Image.asset(Assets.imagesRocket),
          TitleSection(),
          verticalSpace(20),
          PlansList(),
          verticalSpace(30),
          ContinueButton(),
          verticalSpace(20),
        ],
      ),
    );
  }
}
