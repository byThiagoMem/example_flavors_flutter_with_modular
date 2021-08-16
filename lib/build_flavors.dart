import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_base_dio/app/app_widget.dart';
import 'package:new_base_dio/app/shared/config/flavors/flavors.dart';

import 'app/app_module.dart';

void buildFlavor(Flavor flavor) {
  F.appFlavor = flavor;
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
