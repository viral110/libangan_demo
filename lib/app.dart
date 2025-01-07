import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libangan_mobile/src/common/constant/color_helper.dart';
import 'package:libangan_mobile/src/common/constant/string_helper.dart';
import 'package:libangan_mobile/src/routes/app_router.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

WebSocketChannel? channel;
WebSocketChannel? newChannel;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: StringHelper.appName,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        scaffoldBackgroundColor: ColorHelper.bgColor,
      ),
      routerConfig: AppRouter().router,
    );
  }
}
