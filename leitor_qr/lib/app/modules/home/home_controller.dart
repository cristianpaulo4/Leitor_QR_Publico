import 'package:flutter_share_me/flutter_share_me.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:url_launcher/url_launcher.dart';
part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  String result = '';

  @action
  compartilharWaths() async {
    FlutterShareMe().shareToWhatsApp(msg: result);
  }

  @action
  compartilharFacebook() async {
    FlutterShareMe().shareToFacebook(msg: result);
  }

  @action
  compartilharSms() async {
    String url = 'sms:?body= $result';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @action
  compartilharWeb() async {
    String url = '$result';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @action
  compartilharEmail() async {
    String url = 'mailto:""?subject=${"Baixe já QR Reader"}&body=${result}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @computed
  String get getResult => this.result;
}
