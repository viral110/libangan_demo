import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:libangan_mobile/src/app/home/presentation/bloc/banner_bloc/banner_bloc.dart';
import 'package:libangan_mobile/src/common/constant/image_helper.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  int _index = 0;
  CarouselSliderController carouselSliderController =
      CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerBloc, BannerState>(builder: (context, state) {
      if (state is BannerLoadedState) {
        return Stack(
          alignment: Alignment.center,
          children: [
            CarouselSlider.builder(
                carouselController: carouselSliderController,
                itemCount:
                    state.getBannerEntities.resultEntities?.data?.length ?? 0,
                itemBuilder: (context, index, realIndex) {
                  return state.getBannerEntities.resultEntities?.data?[index]
                              .image !=
                          null
                      ? Container(
                          height: double.infinity,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: MemoryImage(
                                    base64Decode(
                                      state.getBannerEntities.resultEntities!
                                          .data![index].image!,
                                    ),
                                  ),
                                  fit: BoxFit.cover
                                  //     // NetworkImage(
                                  //     //     'https://s3-alpha-sig.figma.com/img/cd3b/95d5/1d6d763c3abcd226ada9412aa4bab3cc?Expires=1734307200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=K~EToMrLzUQIHWEDN0QbyXYlwAi42uQvjWRbd8Zlid3pgHW2Rsk5FejCchNoG93m-GwtXeVxqXEQV1EA1SuO8Haz846KH6f-iblbF6UzSlsdU2LYogXgzHyGJZATSq3r3b1XG2K2tjO0H2ceZOi4AKvLu9Q2s01FNr3DsxJH87cUinemS8boPRzGq9OpgF85ewJFozS5dPpaiwlunpLjzmlqRXuowvnusHZtK3c1-EQsV3fOKpHeLGv-2EnkaRNIYVx3AjxXg5JRI-nuKGxQ8Lin5eFP-qA3f5QxvwXr6sHK8bI9ltmEFaCspIjiUwdoDGJ0c3XVQfUhK8KhrO8OjQ__'),
                                  //     fit: BoxFit.cover)
                                  )))
                      : Container();
                },
                options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      _index = index;
                      print(_index);
                      // setState(() {});
                    },
                    scrollPhysics: AlwaysScrollableScrollPhysics(),
                    aspectRatio: 1.90 / 1,
                    enableInfiniteScroll: false,
                    viewportFraction: .90)),
            if (_index == 1)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(
                          3.14159), // Flip horizontally (around Y axis)
                      child: SvgPicture.asset(ImageHelper.bannerArrow),
                    ),
                    onTap: () {
                      carouselSliderController.previousPage();
                    },
                  ),
                ),
              ),
            if (_index == 0)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: SvgPicture.asset(ImageHelper.bannerArrow),
                    onTap: () {
                      carouselSliderController.nextPage();
                    },
                  ),
                ),
              ),
          ],
        );
      } else if (state is BannerLoadingState) {
        return CircularProgressIndicator();
      } else {
        return Container();
      }
    });
  }
}
