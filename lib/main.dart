import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/config/services/services.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

Future initServices() async {
  // Start Services
  await Get.putAsync(() => AppServices().init());
}
