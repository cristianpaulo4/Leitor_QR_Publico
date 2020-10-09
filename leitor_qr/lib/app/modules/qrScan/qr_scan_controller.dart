import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'qr_scan_controller.g.dart';

@Injectable()
class QrScanController = _QrScanControllerBase with _$QrScanController;

abstract class _QrScanControllerBase with Store {
  @observable
  String _qr_result = "";

  @observable
  bool flash = false;

  @action
  setFlash() => this.flash = !flash;

  @action
  resultadoQr(String res) {
    this._qr_result = res;

    Modular.to.pushReplacementNamed(
      '/home',
      arguments: res,
    );
    print(res);
  }
}
