import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/functions.dart';
import 'package:responsive_dashboard/views/widgets/custom_backgraund_container.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgraundContainer(
      child: AspectRatio(
          aspectRatio: 420 / 215,
          child: Container(
            decoration: AppFunctions.customShapeDecoration(
              backGroundImage:
                  const DecorationImage(image: AssetImage(Assets.imagesMyCard)),
              borderColor: const Color(0xff4EB7F2),
              color: const Color(0xff4EB7F2),
            ),
            child: Column(
              children: [
                ListTile(
                  contentPadding:
                      const EdgeInsets.only(top: 16, left: 32, right: 40),
                  title: const Text(
                    'Name card',
                    style: AppStyles.styleRegular16,
                  ),
                  subtitle: const Text(
                    'Syah Bandi',
                    style: AppStyles.styleMedium20,
                  ),
                  trailing: SvgPicture.asset(Assets.imagesGallery),
                )
              ],
            ),
          )),
    );
  }
}
