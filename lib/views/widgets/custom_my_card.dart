import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding:
                    const EdgeInsets.only( top: 8, left: 32, right: 40),
                title: Text(
                  'Name card',
                  style: AppStyles.styleRegular16(context),
                ),
                subtitle: Text(
                  'Syah Bandi',
                  style: AppStyles.styleMedium20(context),
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
                      style: AppStyles.styleSemiBold24(context)
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      '12/20 - 124',
                      style: AppStyles.styleRegular16(context)
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const Flexible(
                child: SizedBox(
                  height: 8,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ));
  }
}
