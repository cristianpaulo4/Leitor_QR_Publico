import 'package:leitor_qr/app/modules/home/home_controller.dart';
import 'package:leitor_qr/app/modules/home/home_page.dart';
import 'package:leitor_qr/app/modules/qrScan/qr_scan_module.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:leitor_qr/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        $HomeController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: QrScanModule()),
        ModularRouter(
          '/home',
          child: (_, args) => HomePage(
            result: args.data,
          ),
          params: {},
          transition: TransitionType.fadeIn,
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
