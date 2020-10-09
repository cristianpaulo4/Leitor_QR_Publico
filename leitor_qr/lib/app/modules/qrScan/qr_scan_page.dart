import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';
import 'package:qrcode_flutter/qrcode_flutter.dart';
import 'qr_scan_controller.dart';

class QrScanPage extends StatefulWidget {
  final String title;
  const QrScanPage({Key key, this.title = "QrScan"}) : super(key: key);

  @override
  _QrScanPageState createState() => _QrScanPageState();
}

class _QrScanPageState extends ModularState<QrScanPage, QrScanController>
    with TickerProviderStateMixin {
  QRCaptureController _captureController = QRCaptureController();
  AnimationController _animationController;

  bool control = true;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
    );

    _captureController.onCapture(
      (data) {
        if (control) {
          print('-------------------');
          print('$data');
          print('-------------------');
          controller.resultadoQr(data);
        }
        control = false;
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          QRCaptureView(
            controller: _captureController,
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  Modular.to.pushReplacementNamed('/home');
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Observer(
              builder: (_) {
                return IconButton(
                  icon: Icon(
                    controller.flash
                        ? Icons.lightbulb
                        : Icons.lightbulb_outline_sharp,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    if (controller.setFlash()) {
                      _captureController.torchMode = CaptureTorchMode.on;
                    } else {
                      _captureController.torchMode = CaptureTorchMode.off;
                    }
                  },
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 250,
              width: 250,
              //color: Colors.black45,
              child: Lottie.asset(
                "lib/app/modules/qrScan/assets/scan.json",
                controller: _animationController,
                onLoaded: (composition) {
                  _animationController
                    ..duration = composition.duration
                    ..repeat();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
