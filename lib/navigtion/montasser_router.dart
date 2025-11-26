// 📁 navigation/montasser_router.dart
import 'package:flutter/material.dart';

class MontasserRouter {
  static final GlobalKey<NavigatorState> navigatorKey = 
      GlobalKey<NavigatorState>();

  static Future<T?> navigateTo<T>(Widget page, {Object? arguments}) async {
    return await navigatorKey.currentState?.push<T>(
      MaterialPageRoute(
        builder: (_) => page,
        settings: RouteSettings(arguments: arguments),
      ),
    );
  }

  static Future<T?> replaceWith<T>(Widget page, {Object? arguments}) async {
    return await navigatorKey.currentState?.pushReplacement<T, T>(
      MaterialPageRoute(
        builder: (_) => page,
        settings: RouteSettings(arguments: arguments),
      ),
    );
  }

  static Future<T?> navigateAndRemoveUntil<T>(Widget page, {Object? arguments}) async {
    return await navigatorKey.currentState?.pushAndRemoveUntil<T>(
      MaterialPageRoute(
        builder: (_) => page,
        settings: RouteSettings(arguments: arguments),
      ),
      (_) => false,
    );
  }

  static void goBack<T>([T? result]) {
    navigatorKey.currentState?.pop<T>(result);
  }
}