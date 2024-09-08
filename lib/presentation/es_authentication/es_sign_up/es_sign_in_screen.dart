import 'package:esports_arena/core/dimenson.dart';
import 'package:esports_arena/generated/l10n.dart';
import 'package:esports_arena/theme/theme_helper.dart';
import 'package:esports_arena/utils/app_validator.dart';
import 'package:esports_arena/widget/es_text_form_field/es_otp_textfield.dart';
import 'package:esports_arena/widget/es_text_form_field/es_text_form_field.dart';
import 'package:esports_arena/widget/yooii_custom_button/es_custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EsSignInScreen extends StatefulWidget {
  const EsSignInScreen({super.key});

  @override
  State<EsSignInScreen> createState() => _EsSignInScreenState();
}

class _EsSignInScreenState extends State<EsSignInScreen> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.authbackground,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: Column(
          children: [
            buildSizedBoxH(150.0),
            Text(
              Lang.current.lbl_sign_in,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontSize: 24.sp),
            ),
            buildSizedBoxH(200),
            EsTextFormField(
              textInputType: TextInputType.number,
              context: context,
              hintText: "Mobile No.",
              controller: mobileController,
              maxLength: 10,
            ),
            buildSizedBoxH(20.0),
            CustomOtpTextField(
              otpController: otpController,
              focusNode: FocusNode(),
              validator: Validator.validateOTP,
            ),
            buildSizedBoxH(20.0),
            CustomElevatedButton(
              text: Lang.of(context).lbl_sign_in,
              onPressed: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              buttonStyle: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(
                  Color(0xFF704DFF),
                ),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
