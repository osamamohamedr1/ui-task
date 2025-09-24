import 'package:flutter/material.dart';
import 'package:ui_taski_2nd_week/core/utils/colors_manager.dart';
import 'package:ui_taski_2nd_week/core/utils/text_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.isSelected,
    required this.title,
  });
  final bool isSelected;

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? ColorsManager.blue : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),

      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      margin: EdgeInsets.only(right: 8),
      child: Text(
        title,
        style: !isSelected
            ? TextStyles.font14BlueBold
            : TextStyles.font14WhiteBold,
      ),
    );
  }
}
