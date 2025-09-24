import 'package:flutter/material.dart';
import 'package:ui_taski_2nd_week/features/home/presentation/views/widgets/category_item.dart';

class CategoryFilterList extends StatefulWidget {
  const CategoryFilterList({super.key});

  @override
  State<CategoryFilterList> createState() => _CategoryFilterListState();
}

class _CategoryFilterListState extends State<CategoryFilterList> {
  final List<String> categories = [
    "All",
    "Popular",
    "Trending",
    "New Releases",
    "Top Rated",
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: CategoryItem(
              title: categories[index],
              isSelected: selectedIndex == index,
            ),
          );
        },
      ),
    );
  }
}
