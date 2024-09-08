import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EsTextFormField extends StatelessWidget {
  const EsTextFormField({
    super.key,
    required this.context,
    this.validator,
    this.width,
    this.alignment,
    this.textStyle,
    this.isObscure = false,
    this.isCapitalized = false,
    this.maxLines = 1,
    this.isLabelEnabled = true,
    this.readOnly = false,
    this.controller,
    this.inputAction,
    this.focusNode,
    this.label,
    this.onTap,
    this.prefix,
    this.maxLength,
    this.suffixIcon,
    this.autofillHints,
    this.inputFormatters,
    this.prefixIcon,
    this.onFieldSubmitted,
    this.onChanged,
    this.textInputAction,
    this.textInputType,
    this.hintStyle,
    this.hintText,
    this.obscureText = false,
    this.suffix,
    this.fillColor,
    this.filled = true,
    this.borderDecoration,
    this.enabled = true,
    this.labelText,
    this.required = false,
    this.autovalidateMode,
    this.onSaved,
    this.labelStyle,
    this.initialValue,
  });

  final TextEditingController? controller;
  final BuildContext context;
  final Alignment? alignment;
  final double? width;
  final TextInputAction? inputAction;
  final String? label;
  final bool isObscure;
  final bool isCapitalized;
  final TextStyle? textStyle;
  final int maxLines;
  final int? maxLength;
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  final bool isLabelEnabled;
  final String? Function(String?)? validator;
  final Function(String)? onFieldSubmitted;
  final bool readOnly;
  final Widget? suffixIcon;
  final String? hintText;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final Widget? prefix;
  final Widget? prefixIcon;
  final void Function()? onTap;
  final Iterable<String>? autofillHints;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final Widget? suffix;
  final Color? fillColor;
  final bool? filled;
  final InputBorder? borderDecoration;
  final bool? enabled;
  final String? labelText;
  final bool? required;
  final AutovalidateMode? autovalidateMode;
  final String? initialValue;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget(),
          )
        : textFormFieldWidget();
  }

  Widget textFormFieldWidget() => SizedBox(
        width: width ?? double.maxFinite,
        child: TextFormField(
          controller: controller,
          initialValue:
              controller == null ? initialValue : null, 
          enabled: enabled,
          onSaved: onSaved,
          onChanged: onChanged,
          obscureText: obscureText,
          inputFormatters: inputFormatters,
          autofillHints: autofillHints,
          onTap: onTap,
          maxLines: maxLines,
          maxLength: maxLength,
          onFieldSubmitted: onFieldSubmitted,
          focusNode: focusNode,
          readOnly: readOnly,
        
          style: textStyle ?? Theme.of(context).textTheme.bodyMedium,
          textCapitalization: isCapitalized
              ? TextCapitalization.words
              : TextCapitalization.none,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          decoration: getInputDecoration(),
          validator: validator,
          enableSuggestions: true,
          cursorOpacityAnimates: true,
          autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
        ),
      );

  InputDecoration getInputDecoration() => InputDecoration(
        labelText: labelText,
        labelStyle: labelStyle ?? Theme.of(context).textTheme.bodySmall,
        alignLabelWithHint: true,
        hintText: hintText??'',
        hintStyle: hintStyle ?? Theme.of(context).textTheme.bodySmall,
        prefixIcon: prefixIcon ?? prefix,
        suffixIcon: suffixIcon ?? suffix,
        isDense: true,
        counterText: '',
        contentPadding: EdgeInsets.only(
          left: 24.0.w,
          top: 20.5.h,
          bottom: 12.5.h,
          right: 18.0.w,
        ),
        fillColor: fillColor,
        filled: filled ?? false,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(
                color: fillColor?? const Color(0xff334155),
                width: 1,
              ),
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(
                color: fillColor ?? const Color(0xff334155),
                width: 1,
              ),
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(
                color: fillColor ?? const Color(0xff334155),
                width: 1,
              ),
            ),
      );

}
