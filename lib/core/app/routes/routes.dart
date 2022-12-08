import 'package:flutter/widgets.dart';
import 'package:guide_my_steps/core/app/app.dart';
import 'package:guide_my_steps/core/home/home.dart';
import 'package:guide_my_steps/core/login/login.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage2.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
