import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libangan_mobile/src/app/home/presentation/bloc/banner_bloc/banner_bloc.dart';
import 'package:libangan_mobile/src/app/home/presentation/bloc/trading_banner_bloc/trading_banner_bloc.dart';
import 'package:libangan_mobile/src/common/constant/color_helper.dart';
import 'package:libangan_mobile/src/common/constant/string_helper.dart';

class TrendingWidget extends StatelessWidget {
  const TrendingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TradingBannerBloc, TradingBannerState>(
        builder: (context, state) {
      if (state is TradingBannerLoadedState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                StringHelper.trending,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                StringHelper.loremIpusim,
                style: const TextStyle(
                    fontSize: 10, color: ColorHelper.lightTextColor),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 160,
              child: ListView.builder(
                itemCount: state.getBannerEntities.resultEntities!.data!.length,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return state.getBannerEntities.resultEntities!.data?[index]
                              .image !=
                          null
                      ? AspectRatio(
                          aspectRatio: 1.91 / 1,
                          child: Container(
                            height: double.infinity,
                            // width: double.infinity,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: MemoryImage(
                                      base64Decode(
                                        state.getBannerEntities.resultEntities!
                                            .data![index].image!,
                                      ),
                                    ),

                                    //  NetworkImage(
                                    //     'https://s3-alpha-sig.figma.com/img/6f9f/1ed3/1f00a1acd824f0a0e3e73e049dd03514?Expires=1734307200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Gd7x3anKshbBaSu93-f0YD3gMZrZRo8GadGGcLOCXBQbKI5XSBfqkweaDJUe12IKrzAjsYjr63F~NXKav4Kjk1dlAB8KRWmqzAq65x59dyYrc6B55z3dgjzKK47hodGotoGHKva7NlFrCYfTjREfNErFPsDjvqKC28u3R1U7ggVTsSCp54D9DgMzPyRXbfj2SLg1zkK78w-rCJfBMXZElZpYGQu7M93URS7EmRy1QpyziDTyOYfjdW6TcShA3E1RLIqNPE0WPTirX4R6fyPdTG32WsHoqrBYl0SBGl2SVzpFqgjDhqrwtYdGS0v6IhOzF1CuD6Sgn338en0C8OpC3Q__'),

                                    fit: BoxFit.cover)),
                          ))
                      : Container();
                },
              ),
            )
          ],
        );
      } else if (state is TradingBannerLoadingState) {
        return CircularProgressIndicator();
      } else {
        return Container();
      }
    });
  }
}
