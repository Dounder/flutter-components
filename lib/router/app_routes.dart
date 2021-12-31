import 'package:flutter/material.dart';

import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listview1',
        icon: Icons.list,
        name: 'Listview Tipo 1',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_alt,
        name: 'Listview Tipo 2',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.alarm,
        name: 'Alertas',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.credit_card,
        name: 'Tarjetas - Cards',
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle,
        name: 'Circle Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_circle_outline,
        name: 'Animated Container',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'inputs',
        icon: Icons.input_rounded,
        name: 'Inputs Textfield',
        screen: const InputsScreen()),
    MenuOption(
        route: 'slider',
        icon: Icons.slow_motion_video_rounded,
        name: 'Sliders && Checks',
        screen: const SliderScreen()),
    MenuOption(
        route: 'listviewBuilder',
        icon: Icons.build_circle_outlined,
        name: 'Infinite Scroll',
        screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listView1': (BuildContext context) => const Listview1Screen(),
  //   'listView2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute<RouteSettings>(settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
