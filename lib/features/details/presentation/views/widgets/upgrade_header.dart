import 'package:flutter/material.dart';
import 'package:ui_taski_2nd_week/core/utils/spacing.dart';
import 'package:ui_taski_2nd_week/core/utils/text_styles.dart';

class UpgradeHeader extends StatelessWidget {
  const UpgradeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        horizontalSpace(40),
        Text('Upgrade Plan', style: TextStyles.font24DarkBlueBold),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),

            child: const Icon(Icons.close, color: Color(0xFF2D1B69), size: 20),
          ),
        ),
      ],
    );
  }
}
