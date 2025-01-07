import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:libangan_mobile/get_it_configuration/get_it_configuration.dart';
import 'package:libangan_mobile/src/app/home/presentation/bloc/banner_bloc/banner_bloc.dart';
import 'package:libangan_mobile/src/app/home/presentation/bloc/trading_banner_bloc/trading_banner_bloc.dart';
import 'package:libangan_mobile/src/app/home/presentation/widgets/categories_widget.dart';
import 'package:libangan_mobile/src/app/home/presentation/widgets/home_banner.dart';
import 'package:libangan_mobile/src/app/home/presentation/widgets/trending_widget.dart';
import 'package:libangan_mobile/src/app/home/presentation/widgets/wallet_widget.dart';
import 'package:libangan_mobile/src/common/constant/color_helper.dart';
import 'package:libangan_mobile/src/common/constant/image_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt.get<BannerBloc>()
            ..add(GetBannerEvent())
        
        ),

        BlocProvider(
          create: (context) => getIt.get<TradingBannerBloc>()
            ..add(GetTredingBannerEvent()),
        ),
      ],
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: ColorHelper.bgColor,
            title: Image.asset(
              ImageHelper.horizontelLogo,
              height: 30,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(ImageHelper.notification)),
              Padding(
                padding: const EdgeInsets.only(right: 7.0),
                child: IconButton(
                    onPressed: () {}, icon: SvgPicture.asset(ImageHelper.scan)),
              ),
            ],
          ),
          body: const SingleChildScrollView(
            child: Column(
              children: [
                HomeBanner(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                  child: WalletWidget(),
                ),
                Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                    child: CategoriesWidget()),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: TrendingWidget())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
