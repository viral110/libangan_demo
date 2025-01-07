import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:libangan_mobile/src/app/home/presentation/pages/home_page.dart';
import 'package:libangan_mobile/src/common/constant/color_helper.dart';
import 'package:libangan_mobile/src/common/constant/image_helper.dart';

class CustomNavBarPage extends StatefulWidget {
  const CustomNavBarPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomNavBarPage> createState() => _CustomNavBarPageState();
}

class _CustomNavBarPageState extends State<CustomNavBarPage> {
  int _currentIndex = 0;

  final List<Widget> _page = [
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: _page[_currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 2,
              blurRadius: 5,
            )
          ]),
          child: BottomNavigationBar(
            backgroundColor: ColorHelper.whiteColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (int index) {
              _currentIndex = index;

              setState(() {});
            },
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    ImageHelper.voucher,
                    height: 28,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    ImageHelper.wallet,
                    height: 28,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    ImageHelper.dashboard,
                    height: 33,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    ImageHelper.settings,
                    height: 28,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    ImageHelper.profile,
                    height: 28,
                  ),
                  label: ""),
            ],
          ),
        ),
      ),
    );
  }
}
