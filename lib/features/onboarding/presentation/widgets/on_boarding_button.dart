import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helper/extension.dart';
import 'package:flutter_advanced/core/routing/routes.dart';
import 'package:flutter_advanced/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58.h,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginView);
        },
        style: TextButton.styleFrom(
          backgroundColor: ColorManager.mainblue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        child: Text(
          'Get Started',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
