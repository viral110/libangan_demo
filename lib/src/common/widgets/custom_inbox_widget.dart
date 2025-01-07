import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/color_helper.dart';

class CustomInboxWidget extends StatelessWidget {
  final String name;

  const CustomInboxWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration:  const BoxDecoration(
        gradient: ColorHelper.primaryGradient,
        borderRadius: BorderRadius.vertical(
          // bottom: Radius.circular(15),
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
