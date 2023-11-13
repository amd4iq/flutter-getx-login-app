import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/modules/authentication/sign_in/controllers/sign_in_controller.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SignInController controller = Get.put(SignInController());
    return Drawer(
      backgroundColor: Colors.grey[900],
      width: Get.width * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Gap(50),
          Container(
            height: Get.height * 0.23,
            width: Get.width * 0.5,
            padding: EdgeInsets.all(Get.width * 0.05),
            child: const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://yt3.googleusercontent.com/elTkpsuUfHfB2U4IOl3wuaq8doM8D3z1cacz0tRLNoht0bWQOmR5aRweSvt8t_y1C0x83M7iQw=s176-c-k-c0x00ffffff-no-rj'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Text(''),
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text(
              'Profile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text(
              'Settings',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          SizedBox(
            height: Get.height * 0.2,
          ),
          ListTile(
            title: const Text(
              'Logout',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            onTap: () {
              controller.singUserOut();
            },
          ),
        ],
      ),
    );
  }
}
