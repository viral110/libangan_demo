import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libangan_mobile/src/common/constant/color_helper.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? textController;
  final bool? isrequired;
  final String? title;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final String? hintText;
  final int? maxLength;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? readOnly;
  final double? width;
  final double? height;
  final Function()? onTap;
  final double? textFontSize;
  final Function(String)? onChange;
  final Function()? onEditComplete;
  final int? maxLine;
  final TextInputFormatter? textInputFormatter;
  final FormFieldValidator<String>? validator;

  const CustomTextFormField({
    super.key,
    this.title,
    this.textController,
    this.isrequired,
    this.obscureText,
    this.keyboardType,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.height,
    this.width,
    this.maxLength,
    this.readOnly,
    this.textFontSize,
    this.onTap,
    this.onChange,
    this.onEditComplete,
    this.maxLine,
    this.textInputFormatter,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (title != null)
            Wrap(
              children: [
                Text(
                  title!,
                  style: const TextStyle(color: ColorHelper.textFiledTextColor),
                ),
                if ((isrequired ?? false))
                  const Text(
                    "*",
                    style: TextStyle(color: ColorHelper.primary, fontSize: 16),
                  ),
              ],
            ),
          if (title != null)
            const SizedBox(
              height: 5,
            ),
          TextFormField(
            readOnly: readOnly ?? false,
            controller: textController,
            onTap: onTap,
            obscureText: obscureText == null ? false : obscureText!,
            maxLength: maxLength,
            style: GoogleFonts.poppins(
              color: ColorHelper.blackColor,
              fontSize: textFontSize ?? 14,
              fontWeight: FontWeight.w400,
            ),
            keyboardType: keyboardType,
            inputFormatters:
                textInputFormatter == null ? null : [textInputFormatter!],
            cursorColor: ColorHelper.textFiledTextColor,
            ignorePointers: readOnly,
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              hintStyle: GoogleFonts.poppins(
                color: ColorHelper.hintTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              // isDense: true,
              filled: true,
              errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: ColorHelper.primary),
                  borderRadius: BorderRadius.circular(10)),
              border: !(readOnly ?? false)
                  ? OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: ColorHelper.textFiledBorderColor),
                      borderRadius: BorderRadius.circular(10))
                  : OutlineInputBorder(
                      borderSide:
                          BorderSide(color: ColorHelper.textFiledBorderColor),
                      borderRadius: BorderRadius.circular(10)),

              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: ColorHelper.blackColor),
                  borderRadius: BorderRadius.circular(10)),
            ),
            onTapOutside: (val) {
              FocusScope.of(context).unfocus();
            },
            onChanged: onChange,
            onEditingComplete: onEditComplete,
            maxLines: maxLine ?? 1,
          )
        ],
      ),
    );

    // SizedBox(
    //   height: height,
    //   width: width,
    //   child: TextFormField(
    //     readOnly: readOnly ?? false,
    //     controller: textController,
    //     onTap: onTap,
    //     obscureText: obscureText == null ? false : obscureText!,
    //     maxLength: maxLength,
    //     style: GoogleFonts.poppins(
    //       color: ColorHelper.blackColor,
    //       fontSize: textFontSize ?? 16,
    //       fontWeight: FontWeight.w400,
    //     ),
    //     keyboardType: keyboardType,
    //     inputFormatters:
    //         textInputFormatter == null ? null : [textInputFormatter!],
    //     decoration: InputDecoration(
    //       hintText: hintText,
    //       suffixIcon: suffixIcon,
    //       prefixIcon: prefixIcon,
    //       hintStyle: GoogleFonts.roboto(
    //         color: ColorHelper.hintTextColor,
    //         fontSize: 16,
    //         fontWeight: FontWeight.w400,
    //       ),
    //       filled: true,
    //       fillColor: ColorHelper.whiteColor,
    //       counterText: "",
    //       border: OutlineInputBorder(
    //         borderSide: const BorderSide(
    //             color: ColorHelper.textFiledBorderColor, width: 1),
    //         borderRadius: BorderRadius.circular(5),
    //       ),
    //       enabledBorder: OutlineInputBorder(
    //         borderSide: const BorderSide(
    //             color: ColorHelper.textFiledBorderColor, width: 1),
    //         borderRadius: BorderRadius.circular(5),
    //       ),
    //       contentPadding:
    //           const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    //       focusedBorder: OutlineInputBorder(
    //         borderSide: const BorderSide(
    //             color: ColorHelper.textFiledBorderColor, width: 1),
    //         borderRadius: BorderRadius.circular(5),
    //       ),
    //     ),
    //     onTapOutside: (val) {
    //       FocusScope.of(context).unfocus();
    //     },
    //     onChanged: onChange,
    //     onEditingComplete: onEditComplete,
    //     maxLines: maxLine ?? 1,
    //   ),
    // );
  }
}
