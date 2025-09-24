import 'package:flutter/material.dart';
import 'package:ui_taski_2nd_week/core/utils/assets.dart';
import 'package:ui_taski_2nd_week/core/utils/colors_manager.dart';
import 'package:ui_taski_2nd_week/core/utils/spacing.dart';
import 'package:ui_taski_2nd_week/core/utils/text_styles.dart';
import 'package:ui_taski_2nd_week/features/details/data/models/plan_model.dart';

class PlanCard extends StatelessWidget {
  final PlanModel plan;
  final bool isSelected;
  final VoidCallback onTap;

  const PlanCard({
    super.key,
    required this.plan,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? ColorsManager.darkBlue : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? ColorsManager.darkBlue : Colors.transparent,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Image.asset(Assets.imagesFile),

            horizontalSpace(16),

            Expanded(
              child: Column(
                spacing: 3,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    plan.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.white : ColorsManager.darkBlue,
                    ),
                  ),

                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: plan.price,
                          style: TextStyles.font14WhiteBold.copyWith(
                            color: isSelected
                                ? Colors.white
                                : ColorsManager.darkBlue,
                          ),
                        ),

                        TextSpan(
                          text: plan.period,
                          style: TextStyles.font14GreySemiBold,
                        ),
                      ],
                    ),
                  ),

                  Text(plan.description, style: TextStyles.font12GreyMedium),
                ],
              ),
            ),

            horizontalSpace(16),

            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isSelected ? ColorsManager.blue : Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected
                      ? ColorsManager.blue
                      : ColorsManager.darkBlue,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? Icon(Icons.check, size: 16, color: ColorsManager.darkBlue)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
