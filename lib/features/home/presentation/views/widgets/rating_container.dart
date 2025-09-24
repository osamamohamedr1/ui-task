import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_taski_2nd_week/core/utils/colors_manager.dart';
import 'package:ui_taski_2nd_week/core/utils/text_styles.dart';

class RatingContainer extends StatelessWidget {
  const RatingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 4, right: 6, top: 2, bottom: 2),
      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
      child: Row(
        spacing: 3,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star_rounded, size: 18, color: ColorsManager.blue),

          Text(
            '5.5',
            style: TextStyles.font14GreySemiBold.copyWith(
              color: Colors.black,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
