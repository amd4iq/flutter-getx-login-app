import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/config/constants/storage_keys.dart';
import 'package:getx_e_project/app/config/services/services.dart';
import 'package:getx_e_project/app/routes/app_pages.dart';

class FirstLaunchMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  // Redirect if user is authenticated
  @override
  RouteSettings? redirect(String? route) {
    if (getStorage.read(isFirstLaunch) != null) {
      return const RouteSettings(name: Routes.SIGN_IN);
    }
    return null;
  }
}
