import 'package:flutter/material.dart';
import 'package:ui_taski_2nd_week/core/utils/assets.dart';
import 'package:ui_taski_2nd_week/core/utils/colors_manager.dart';
import 'package:ui_taski_2nd_week/core/utils/spacing.dart';
import 'package:ui_taski_2nd_week/features/details/presentation/views/widgets/custom_button.dart';
import 'package:ui_taski_2nd_week/features/details/presentation/views/widgets/custom_data_widget.dart';
import 'package:ui_taski_2nd_week/features/details/presentation/views/widgets/info_meta_data.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Assets.imagesDetails,
          width: double.maxFinite,
          fit: BoxFit.cover,
        ),
        verticalSpace(75),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(title: 'Dark Fantasy', isBody: true),
              CustomButton(title: 'Action', isBody: true),
              CustomButton(title: 'Adventure', isBody: true),
            ],
          ),
        ),

        Divider(color: ColorsManager.buttonColor, indent: 24, endIndent: 24),

        InfoMetaData(),
        Divider(color: ColorsManager.buttonColor, indent: 24, endIndent: 24),
        verticalSpace(12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomDataWidget(
            asset: Assets.svgsTrend,
            isAtStart: true,
            title:
                'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
          ),
        ),
        verticalSpace(50),
      ],
    );
  }
}
