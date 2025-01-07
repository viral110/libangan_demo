import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:libangan_mobile/src/common/constant/color_helper.dart';
import 'package:libangan_mobile/src/common/constant/image_helper.dart';
import 'package:libangan_mobile/src/common/constant/string_helper.dart';
import 'package:libangan_mobile/src/common/widgets/custom_button_widget.dart';

class WalletWidget extends StatelessWidget {
  const WalletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: ColorHelper.walletBackgroundColor,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringHelper.availableBalance,
                    style: const TextStyle(
                        fontSize: 10, color: ColorHelper.lightTextColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(ImageHelper.walletFilled),
                      const SizedBox(
                        width: 10,
                      ),
                      Wrap(
                        children: [
                          for (int i = 0; i < 5; i++)
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2),
                              child: CircleAvatar(
                                backgroundColor: ColorHelper.lightBlack,
                                radius: 3.5,
                              ),
                            )
                        ],
                      )
                    ],
                  )
                ],
              )),
          Expanded(
              flex: 4,
              child: CustomButtonWidget(
                name: StringHelper.cashIn,
                fontWeight: FontWeight.normal,
                onTap: () {},
                textColor: ColorHelper.blackColor,
              ))
        ],
      ),
    );
  }
}
