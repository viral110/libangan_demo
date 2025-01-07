import 'package:flutter/material.dart';
import 'package:libangan_mobile/src/common/constant/color_helper.dart';

class LoadingWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;

  const LoadingWidget({super.key, this.height, this.width, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? MediaQuery.of(context).size.height * .7,
      width: width ?? MediaQuery.of(context).size.width,
      child: Center(
        child: CircularProgressIndicator(
          color: color ?? ColorHelper.buttonColor,
        ),
      ),
    );
  }
}
