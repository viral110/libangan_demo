import 'package:flutter/material.dart';
import 'package:libangan_mobile/src/common/constant/color_helper.dart';

class CustomButtonWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final String name;
  final Color? color;
  final Color? textColor;
  final double? textSize;
  final Function() onTap;
  final EdgeInsets? margin;
  final FontWeight? fontWeight;
  final Color? borderColor;
  final bool iselevated;
  final Color? backgroundColor;

  const CustomButtonWidget({
    super.key,
    this.height,
    this.width,
    required this.name,
    this.color,
    this.textColor,
    this.textSize,
    required this.onTap,
    this.fontWeight,
    this.margin,
    this.borderColor,
    this.iselevated = true,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: iselevated ? 7 : 0,
      borderRadius: BorderRadius.circular(10.5),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          height: height ?? 45,
          width: width ?? MediaQuery.of(context).size.width,
          margin: margin,
          decoration: BoxDecoration(
            color: color ?? ColorHelper.buttonColor,
            borderRadius: BorderRadius.circular(10.5),
            border: Border.all(
                color: borderColor ?? ColorHelper.buttonColor, width: 1.5),
          ),
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: textSize ?? 13,
                fontWeight: fontWeight ?? FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
