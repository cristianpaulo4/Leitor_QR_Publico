// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<String> _$getResultComputed;

  @override
  String get getResult =>
      (_$getResultComputed ??= Computed<String>(() => super.getResult,
              name: '_HomeControllerBase.getResult'))
          .value;

  final _$resultAtom = Atom(name: '_HomeControllerBase.result');

  @override
  String get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(String value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  final _$compartilharWathsAsyncAction =
      AsyncAction('_HomeControllerBase.compartilharWaths');

  @override
  Future compartilharWaths() {
    return _$compartilharWathsAsyncAction.run(() => super.compartilharWaths());
  }

  final _$compartilharFacebookAsyncAction =
      AsyncAction('_HomeControllerBase.compartilharFacebook');

  @override
  Future compartilharFacebook() {
    return _$compartilharFacebookAsyncAction
        .run(() => super.compartilharFacebook());
  }

  final _$compartilharSmsAsyncAction =
      AsyncAction('_HomeControllerBase.compartilharSms');

  @override
  Future compartilharSms() {
    return _$compartilharSmsAsyncAction.run(() => super.compartilharSms());
  }

  final _$compartilharWebAsyncAction =
      AsyncAction('_HomeControllerBase.compartilharWeb');

  @override
  Future compartilharWeb() {
    return _$compartilharWebAsyncAction.run(() => super.compartilharWeb());
  }

  final _$compartilharEmailAsyncAction =
      AsyncAction('_HomeControllerBase.compartilharEmail');

  @override
  Future compartilharEmail() {
    return _$compartilharEmailAsyncAction.run(() => super.compartilharEmail());
  }

  @override
  String toString() {
    return '''
result: ${result},
getResult: ${getResult}
    ''';
  }
}
