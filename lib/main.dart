import 'dart:async';

import 'package:flutter/material.dart';
import 'package:libangan_mobile/app.dart';
import 'package:libangan_mobile/src/utils/storage_utils.dart';
import 'get_it_configuration/get_it_configuration.dart' as di;

void main() async {
  // WidgetsFlutterBinding.ensureIni?tialized();
  // await di.configureDependencies();
  // runApp(const App());

  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await StorageUtil.getInstance();
      await di.configureDependencies();

      runApp(const App());
    },
    (error, stack) {
      print(error);
    },
  );
}
