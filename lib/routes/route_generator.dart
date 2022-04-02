import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:modaapp/pages/detail_page.dart';
import 'package:modaapp/pages/home_page.dart';
import 'package:modaapp/providers/clicked_providers.dart';

class RouteGenerator {
  static Route<dynamic>? _routeOlustur(Widget widget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        builder: (context) => widget,
        settings: settings,
      );
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
        builder: (context) => widget,
        settings: settings,
      );
    } else {
      return CupertinoPageRoute(
        builder: (context) => widget,
        settings: settings,
      );
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings setting) {
    switch (setting.name) {
      case '/':
        return _routeOlustur(const MyHomePage(), setting);

      case '/Detail':
        var _currentImage = setting.arguments as String;
        return _routeOlustur(
            ProviderScope(
              overrides: [
                clickedProviders.overrideWithValue(_currentImage),
              ],
              child: const DetailPage(),
            ),
            setting);
    }
  }
}
