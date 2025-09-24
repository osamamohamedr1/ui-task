import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_taski_2nd_week/features/bottom_nav_bar/presentation/views/bottom_nav_bar.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const UIFirstTask());
}

class UIFirstTask extends StatelessWidget {
  const UIFirstTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const BottomNavBar(),
      ),
    );
  }
}
