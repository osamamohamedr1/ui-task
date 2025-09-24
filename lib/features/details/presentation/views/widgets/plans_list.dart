import 'package:flutter/material.dart';
import 'package:ui_taski_2nd_week/features/details/data/models/plan_model.dart';
import 'package:ui_taski_2nd_week/features/details/presentation/views/widgets/plan_card.dart';

class PlansList extends StatefulWidget {
  const PlansList({super.key});

  @override
  State<PlansList> createState() => _PlansListState();
}

class _PlansListState extends State<PlansList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: plans.length,

      itemBuilder: (context, index) {
        final plan = plans[index];
        final isSelected = selectedIndex == index;
        return PlanCard(
          plan: plan,
          isSelected: isSelected,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
        );
      },
    );
  }
}
