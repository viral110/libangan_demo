import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:libangan_mobile/src/app/splash/presentation/bloc/splash_bloc.dart';
import 'package:libangan_mobile/src/common/constant/color_helper.dart';
import 'package:libangan_mobile/src/common/constant/image_helper.dart';
import 'package:libangan_mobile/src/routes/app_route_name.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<SplashBloc>(context).add(SetSplash());
    return BlocProvider(
      create: (context) => SplashBloc()..add(SetSplash()),
      child: BlocConsumer<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is SplashLoadedState) {
            context.pushReplacement(AppRouteName.customNavBarPage);
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 15,
                  decoration: const BoxDecoration(
                      gradient: ColorHelper.primaryGradient),
                ),
                Image.asset(
                  ImageHelper.logoSquare,
                  scale: 3,
                ),
                Container(
                  height: 20,
                  decoration: const BoxDecoration(
                      gradient: ColorHelper.primaryGradient),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
