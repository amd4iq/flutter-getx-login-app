import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:getx_e_project/firebase_options.dart';

class AppServices extends GetxService {
  Future<AppServices> init() async {
    // Start Services

    // Get Storage Init
    await GetStorage.init();

    // Firebase Init
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    return this;
  }
}

final getStorage = GetStorage();
