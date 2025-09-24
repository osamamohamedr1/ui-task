import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_taski_2nd_week/core/utils/assets.dart';
import 'package:ui_taski_2nd_week/core/utils/colors_manager.dart';
import 'package:ui_taski_2nd_week/core/utils/text_styles.dart';
import 'package:ui_taski_2nd_week/features/details/presentation/views/widgets/details_body.dart';
import 'package:ui_taski_2nd_week/features/details/presentation/views/widgets/details_bottom_bar.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      bottomNavigationBar: DetailsBottomBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            DetailsBody(),
            Positioned(
              left: MediaQuery.sizeOf(context).width / 3.5,
              top: MediaQuery.sizeOf(context).height / 1.65,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.imagesNameBackground),
                  ),
                ),

                child: Column(
                  children: [
                    Text(
                      'DEMON',
                      style: TextStyles.font36BlackNewRocker.copyWith(
                        fontSize: 48.sp,
                      ),
                    ),
                    Text('SLAYER', style: TextStyles.font36BlackNewRocker),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
