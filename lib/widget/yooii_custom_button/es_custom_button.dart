import 'package:esports_arena/theme/theme_helper.dart';
import 'package:esports_arena/widget/yooii_custom_button/base_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends BaseButton {
  const CustomElevatedButton({
    super.key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    super.margin,
    super.onPressed,
    super.buttonStyle,
    super.alignment,
    super.buttonTextStyle,
    super.isDisabled,
    super.height,
    super.width,
    this.rightIconwidth,
    this.leftIconwidth,
    this.isLoading = false,
    required super.text,
  });

  final BoxDecoration? decoration;

  final Widget? leftIcon;

  final Widget? rightIcon;

  final Widget? rightIconwidth;

  final Widget? leftIconwidth;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50.h,
      width: width ?? MediaQuery.of(context).size.width * 0.5,
      margin: margin,
      decoration: decoration,
      child: ElevatedButton(
        style: buttonStyle,
        onPressed: isDisabled ?? false ? null : onPressed ?? () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            leftIcon ?? const SizedBox.shrink(),
            leftIconwidth ?? const SizedBox.shrink(),
            isLoading
                ? const Center(
                    child: CupertinoActivityIndicator(
                      color: AppColors.white,
                    ),
                  )
                : Text(
                    text,
                    style: buttonTextStyle ??
                        Theme.of(context).textTheme.labelMedium,
                  ),
            rightIconwidth ?? const SizedBox.shrink(),
            rightIcon ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
