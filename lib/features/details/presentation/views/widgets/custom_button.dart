import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:ui_taski_2nd_week/core/utils/colors_manager.dart';
import 'package:ui_taski_2nd_week/core/utils/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.image,
    this.color,
    this.padding,
    this.isBody,
    this.onPressed,
  });
  final String title;
  final String? image;
  final Color? color;
  final double? padding;
  final bool? isBody;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: WidgetStatePropertyAll(2),
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(vertical: padding ?? 11, horizontal: 24),
        ),
        backgroundColor: WidgetStatePropertyAll(
          color ?? ColorsManager.buttonColor,
        ),
      ),
      onPressed: onPressed,
      child: Row(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (image != null) ...[SvgPicture.asset(image!)],
          Flexible(
            child: Text(
              title,
              style: isBody != null
                  ? TextStyles.font11WhiteMedium
                  : TextStyles.font14WhiteBold,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
