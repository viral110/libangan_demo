import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:libangan_mobile/src/common/constant/image_helper.dart';
import 'package:libangan_mobile/src/common/constant/string_helper.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            // showMerchantBottomSheet(context);
          },
          child: Column(
            children: [
              SvgPicture.asset(
                ImageHelper.diceMultiple,
                height: 45,
                width: 45,
              ),
              const SizedBox(height: 5),
              Text(
                StringHelper.merchants,
                style:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Column(
          children: [
            SvgPicture.asset(ImageHelper.sports),
            const SizedBox(height: 5),
            Text(
              StringHelper.entertainment,
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Column(
          children: [
            SvgPicture.asset(ImageHelper.tickets),
            const SizedBox(height: 5),
            Text(
              StringHelper.voucherCenter,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Column(
          children: [
            SvgPicture.asset(ImageHelper.gameController),
            const SizedBox(height: 5),
            Text(
              StringHelper.play,
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
