import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theming/colors.dart';
import 'package:flutter_advanced/features/onboarding/presentation/widgets/on_boarding_button.dart';
import 'package:flutter_advanced/features/onboarding/presentation/widgets/row_logo_and_text.dart';
import 'package:flutter_advanced/features/onboarding/presentation/widgets/stack_doc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.sp),
              RowDocLogoAndText(),
              StackImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: Column(
                  children: [
                    Text(
                      textAlign: .center,
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyle(
                        color: ColorManager.grey,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 32.h),
                    OnBoardingButton(),
                    SizedBox(height: 32.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
