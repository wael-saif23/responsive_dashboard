import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomInfoListTile extends StatelessWidget {
  const CustomInfoListTile({
    super.key,
    required this.userInfoModel,
    this.edgeInsets,
  });
  final UserInfoModel userInfoModel;
  final EdgeInsets? edgeInsets;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          edgeInsets ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Card(
        color: const Color(0XFFFAFAFA),
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(
            userInfoModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            userInfoModel.subtitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
