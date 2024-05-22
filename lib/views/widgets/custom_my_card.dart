import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/functions.dart';

class CustomMyCard extends StatelessWidget {
  const CustomMyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 420 / 215,
        child: Container(
          decoration: AppFunctions.customShapeDecoration(
            backGroundImage:
                const DecorationImage(image: AssetImage(Assets.imagesMyCard)),
            borderColor: const Color(0xff4EB7F2),
            color: const Color(0xff4EB7F2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
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
              ),
              const Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '0918 8124 0042 8129',
                      style: AppStyles.styleSemiBold24
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      '12/20 - 124',
                      style: AppStyles.styleRegular16
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 27,
              )
            ],
          ),
        ));
  }
}
