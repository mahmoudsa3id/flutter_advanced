import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/utils/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RowDocLogoAndText extends StatelessWidget {
  const RowDocLogoAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      crossAxisAlignment: .center,
      children: [
        SvgPicture.asset(AssetsImages.svgsDocLogo),
        SizedBox(width: 10.sp),
        Text(
          'Docdoc',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.sp,
            fontWeight: .bold,
          ),
        ),
      ],
    );
  }
}
