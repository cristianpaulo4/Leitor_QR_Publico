// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_scan_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $QrScanController = BindInject(
  (i) => QrScanController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$QrScanController on _QrScanControllerBase, Store {
  final _$_qr_resultAtom = Atom(name: '_QrScanControllerBase._qr_result');

  @override
  String get _qr_result {
    _$_qr_resultAtom.reportRead();
    return super._qr_result;
  }

  @override
  set _qr_result(String value) {
    _$_qr_resultAtom.reportWrite(value, super._qr_result, () {
      super._qr_result = value;
    });
  }

  final _$flashAtom = Atom(name: '_QrScanControllerBase.flash');

  @override
  bool get flash {
    _$flashAtom.reportRead();
    return super.flash;
  }

  @override
  set flash(bool value) {
    _$flashAtom.reportWrite(value, super.flash, () {
      super.flash = value;
    });
  }

  final _$_QrScanControllerBaseActionController =
      ActionController(name: '_QrScanControllerBase');

  @override
  dynamic setFlash() {
    final _$actionInfo = _$_QrScanControllerBaseActionController.startAction(
        name: '_QrScanControllerBase.setFlash');
    try {
      return super.setFlash();
    } finally {
      _$_QrScanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic resultadoQr(String res) {
    final _$actionInfo = _$_QrScanControllerBaseActionController.startAction(
        name: '_QrScanControllerBase.resultadoQr');
    try {
      return super.resultadoQr(res);
    } finally {
      _$_QrScanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
flash: ${flash}
    ''';
  }
}
