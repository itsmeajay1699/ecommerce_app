import 'package:ecommerce_app/common/widget/appbar/app_bar.dart';
import 'package:ecommerce_app/common/widget/custom_shapes/primary_header_container.dart';
import 'package:ecommerce_app/common/widget/listTile/setting_menu_tile.dart';
import 'package:ecommerce_app/common/widget/listTile/t_user_profile_tile.dart';
import 'package:ecommerce_app/common/widget/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header

            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text("Account"),
                  ),
                  TUserProfileTile(),
                  SizedBox(
                    height: TSize.spaceBetweenSection,
                  ),
                ],
              ),
            ),
            // body
            Padding(
              padding: const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(
                    text: "Account Setting",
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSize.spaceBtwItems),
                  const TSettingMenuTile(
                    title: "My Cart",
                    icon: Iconsax.shopping_cart,
                    subtitle: "Add, remove products and move to checkout",
                  ),
                  const TSettingMenuTile(
                    title: "My Orders",
                    icon: Iconsax.bag_tick,
                    subtitle: "In-progress and Completed Orders",
                  ),
                  const TSettingMenuTile(
                    title: "My Addresses",
                    icon: Iconsax.safe_home,
                    subtitle: "Set shopping delivery address",
                  ),
                  const TSettingMenuTile(
                    title: "Bank Account",
                    icon: Iconsax.bank,
                    subtitle: "Withdraw balance to registered bank account",
                  ),
                  const TSettingMenuTile(
                    title: "Ny Coupons",
                    icon: Iconsax.discount_shape,
                    subtitle: "List of all the discounted coupons",
                  ),
                  const TSettingMenuTile(
                    title: "Notifications",
                    icon: Iconsax.notification,
                    subtitle: "Set any kind of notification message",
                  ),
                  const TSettingMenuTile(
                    title: "Account Privacy",
                    icon: Iconsax.security_card,
                    subtitle: "Manage data usage and connected accounts",
                  ),
                  const SizedBox(
                    height: TSize.spaceBetweenSection,
                  ),
                  const TSectionHeading(
                    text: "App Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSize.spaceBtwItems),
                  const TSettingMenuTile(
                    title: "Load Data",
                    icon: Iconsax.document_upload,
                    subtitle: "Upload Data to your Cloud Firebase",
                  ),
                  TSettingMenuTile(
                    title: "GeoLocation",
                    icon: Iconsax.location,
                    subtitle: "Set recommendation based on location",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingMenuTile(
                    title: "Safe Mode",
                    icon: Iconsax.security_user,
                    subtitle: "Search result is safe for all ages",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingMenuTile(
                    title: "hD Image Quality",
                    icon: Iconsax.image,
                    subtitle: "Set Image quality to be seen",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
