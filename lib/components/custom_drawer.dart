import 'package:flutter/material.dart';
import 'package:food_app/components/custom_drawer_tile.dart';
import 'package:food_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

import '../pages/settings_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});


  // void checkDarkLightMode(){
  //   ThemeProvider.isDarkMode;
  // }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          ///app logo
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child:
            Image.asset(
              Theme.of(context).brightness == Brightness.dark ? 'assets/logos/seafoodlogolight.png' : 'assets/logos/seafoodlogo.png',
              width: 200,
            ),
            // Image.asset(
            //   "assets/logos/seafoodlogolight.png", width: 200,
            // ),
            // Icon(
            //   Icons.food_bank_outlined,
            //   size: 100,
            //   color: Theme.of(context).colorScheme.inversePrimary,
            // ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          ///home list tile
          CustomDrawerTile(
            text: "H O M E",
            icon: Icons.home_filled,
            onTap: () => Navigator.pop(context),
          ),
          CustomDrawerTile(
            text: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsPage()));
            },
          ),
          const Spacer(),
          CustomDrawerTile(
            text: "L O G O U T",
            icon: Icons.logout,
            onTap: () {},
          ),
          const SizedBox(height: 5)

          ///settings list tile

          ///logout list tile
        ],
      ),
    );
  }
}
