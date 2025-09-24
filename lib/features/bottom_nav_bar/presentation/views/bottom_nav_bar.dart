import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:ui_taski_2nd_week/core/utils/assets.dart';
import 'package:ui_taski_2nd_week/core/utils/colors_manager.dart';
import 'package:ui_taski_2nd_week/core/utils/text_styles.dart';
import 'package:ui_taski_2nd_week/features/home/presentation/views/home_view.dart';
import 'package:ui_taski_2nd_week/features/library/presentation/views/library_view.dart';
import 'package:ui_taski_2nd_week/features/group/presentation/views/group_view.dart';
import 'package:ui_taski_2nd_week/features/settings/presentation/views/settings_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),

      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,

      backgroundColor: ColorsManager.bottomBackground,
      isVisible: true,
      confineToSafeArea: true,
      navBarHeight: 80,
      padding: EdgeInsets.all(18),

      navBarStyle: NavBarStyle.style7,
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeView(),
    const LibraryView(),
    const GroupView(),
    const SettingsView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        Assets.svgsHome2,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
      inactiveIcon: SvgPicture.asset(
        Assets.svgsHome2,
        colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
      ),
      title: "Home",
      textStyle: TextStyles.font14WhiteSemiBold,
      activeColorPrimary: ColorsManager.blue,
      inactiveColorPrimary: Colors.grey,
      activeColorSecondary: Colors.white,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        Assets.svgsLiberary,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
      inactiveIcon: SvgPicture.asset(
        Assets.svgsLiberary,
        colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
      ),
      title: "Docs",
      textStyle: TextStyles.font14WhiteSemiBold,
      activeColorPrimary: ColorsManager.blue,
      inactiveColorPrimary: Colors.grey,
      activeColorSecondary: Colors.white,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        Assets.svgsGroup,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
      textStyle: TextStyles.font14WhiteSemiBold,
      inactiveIcon: SvgPicture.asset(
        Assets.svgsGroup,
        colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
      ),
      title: "Group",
      activeColorPrimary: ColorsManager.blue,
      inactiveColorPrimary: Colors.grey,
      activeColorSecondary: Colors.white,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        Assets.svgsSetting,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
      textStyle: TextStyles.font14WhiteSemiBold,
      inactiveIcon: SvgPicture.asset(
        Assets.svgsSetting,
        colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
      ),
      title: "Settings",
      activeColorPrimary: ColorsManager.blue,
      inactiveColorPrimary: Colors.grey,
      activeColorSecondary: Colors.white,
    ),
  ];
}
