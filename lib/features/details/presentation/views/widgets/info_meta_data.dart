import 'package:flutter/material.dart';
import 'package:ui_taski_2nd_week/core/utils/assets.dart';
import 'package:ui_taski_2nd_week/core/utils/spacing.dart';
import 'package:ui_taski_2nd_week/features/details/presentation/views/widgets/custom_data_widget.dart';

class InfoMetaData extends StatelessWidget {
  const InfoMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: CustomDataWidget(
              asset: Assets.svgsViews,
              title: '2.3M views   ',
            ),
          ),

          horizontalSpace(10),
          Flexible(
            child: CustomDataWidget(asset: Assets.svgsClap, title: '2K clap'),
          ),
          Flexible(
            child: CustomDataWidget(
              asset: Assets.svgsSeason,
              title: '4 Seasons',
            ),
          ),
        ],
      ),
    );
  }
}
