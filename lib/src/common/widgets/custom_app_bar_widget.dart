import 'package:flutter/material.dart';
import '../constant/color_helper.dart';
import '../constant/image_helper.dart';

class CustomAppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final bool? automaticallyImplyLeading;

  const CustomAppBarWidget({Key? key, this.automaticallyImplyLeading}) : super(key: key);

  @override
  State<CustomAppBarWidget> createState() => _CustomAppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarWidgetState extends State<CustomAppBarWidget> {
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorHelper.whiteColor,
      child: Stack(
        children: [
          // Back arrow button with adjusted vertical position
          Positioned(
            top: 0, // Adjust this value to move the back button down
            left: 0,
            bottom: 15,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.of(context).pop(); // Navigate back
              },
            ),
          ),
          // Bottom-aligned content
          Column(
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 35,
                    child: Image.asset(ImageHelper.libanganWordLogo),
                  ),
                  const SizedBox(width: 16),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      ImageHelper.qrScan,
                      width: 29,
                      height: 29,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
            ],
          ),
        ],
      ),
    );
  }
}
