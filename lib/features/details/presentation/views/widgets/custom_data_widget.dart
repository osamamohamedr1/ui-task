import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:ui_taski_2nd_week/core/utils/text_styles.dart';

class CustomDataWidget extends StatelessWidget {
  const CustomDataWidget({
    super.key,
    required this.asset,
    required this.title,
    this.isAtStart,
  });

  final String asset, title;
  final bool? isAtStart;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: isAtStart != null
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(asset),
        Expanded(
          child: Text(
            title,
            style: TextStyles.font14WhiteRegular,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
