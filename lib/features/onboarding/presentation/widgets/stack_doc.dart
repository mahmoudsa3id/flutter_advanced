import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theming/colors.dart';
import 'package:flutter_advanced/core/utils/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StackImageAndText extends StatelessWidget {
  const StackImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: .topCenter,
          child: SvgPicture.asset(AssetsImages.svgsOnboardingDocWithOpacity),
        ),
        Image.asset(AssetsImages.imagesDocPhoto),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,

          child: Container(
            height: 155.sp,
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white.withOpacity(0), Colors.white],
                begin: .topCenter,
                end: .bottomCenter,
                stops: [.13, 0.42],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20.sp,
          left: 0,
          right: 0,
          child: Text(
            textAlign: TextAlign.center,
            'Best Doctor\nAppointment App',
            style: TextStyle(
              color: ColorManager.mainblue,
              fontSize: 32.sp,
              fontWeight: .bold,
            ),
          ),
        ),
      ],
    );
  }
}
