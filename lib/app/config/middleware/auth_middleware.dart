import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/config/constants/storage_keys.dart';
import 'package:getx_e_project/app/config/services/services.dart';
import 'package:getx_e_project/app/routes/app_pages.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 2;
  // Redirect if user is authenticated

  @override
  RouteSettings? redirect(String? route) {
    if (getStorage.read(signinWithFirebaseEmailAndPasswordKey) != null ||
        getStorage.read(isSignedInWithGoogle) != null) {
      return const RouteSettings(name: Routes.HOME);
    }
    return null;
  }
}

// || getStorage.read(isSignedInWithFacebook) != null