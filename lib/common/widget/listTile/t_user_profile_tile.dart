import 'package:ecommerce_app/common/widget/images/t_circular_image.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.kProduct23,
        isNetworkImage: false,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        "Ajay kumar",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.kWhite),
      ),
      subtitle: Text(
        "ajayroy03377@gmail.com",
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: TColors.kWhite),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Iconsax.edit,
          color: TColors.kWhite,
        ),
      ),
    );
  }
}
