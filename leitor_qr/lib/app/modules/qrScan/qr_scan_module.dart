import 'package:leitor_qr/app/modules/qrScan/repository/qrScanRepository.dart';

import 'qr_scan_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'qr_scan_page.dart';

class QrScanModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $QrScanController,
        Bind((i) => QrScanRepository()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => QrScanPage()),
      ];

  static Inject get to => Inject<QrScanModule>.of();
}
