
import 'package:esports_arena/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class CustomOtpTextField extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? otpController;
  final FocusNode? focusNode;

  const CustomOtpTextField(
      {super.key,
      required this.validator,
      required this.otpController,                                                                            
      required this.focusNode});

  @override 
  Widget build(BuildContext context) {
    return Pinput(
      length: 6,
      focusNode: focusNode,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      preFilledWidget: Text(
        '-',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      controller: otpController,
      validator: validator,
      errorTextStyle: GoogleFonts.montserrat(fontSize: 16),
      hapticFeedbackType: HapticFeedbackType.lightImpact,
      keyboardType: TextInputType.number,
      focusedPinTheme: PinTheme(
        height: 48.h,
        width: 48.w,
        textStyle: Theme.of(context).textTheme.bodyMedium,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.textfieldborder),
        ),
      ),
      defaultPinTheme: PinTheme(
        height: 48.h,
        width: 48.w,
        textStyle: Theme.of(context).textTheme.bodyMedium,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.textfieldborder),
        ),
      ),
      errorPinTheme: PinTheme(
        height: 48.h,
        width: 48.w,
        textStyle: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Theme.of(context).primaryColor),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
