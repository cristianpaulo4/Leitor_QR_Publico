import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String result;
  const HomePage({
    Key key,
    this.result,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  @override
  void initState() {
    controller.result = widget.result == null ? '' : widget.result;

    super.initState();
  }

  void whatsAppOpen() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.qr_code,
        ),
        onPressed: () {
          Modular.to.pushReplacementNamed('/');
        },
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            actions: [
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              )
            ],
            expandedHeight: 160,
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: false,
              titlePadding: EdgeInsets.only(
                left: 20,
                bottom: 15,
              ),
              title: Text(
                'QR Reader',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(15),
                      width: double.infinity,
                      height: 150,
                      child: Observer(
                        builder: (_) => Text(controller.getResult),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                      ),
                    ),
                    Container(
                      height: 500,
                      child: Column(
                        children: [
                          Text(
                            'Compartilhar',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black45,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Divider(
                              color: Colors.black45,
                            ),
                          ),
                          ListTile(
                            title: Text(
                              'Web',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            leading: Icon(
                              IcoFontIcons.web,
                              color: Colors.blue,
                            ),
                            subtitle: Text('Abrir Navegador'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            onTap: () async {
                              await controller.compartilharWeb();
                            },
                          ),
                          ListTile(
                            title: Text(
                              'Whatsapp',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            leading: Icon(
                              IcoFontIcons.whatsapp,
                              color: Colors.green,
                            ),
                            subtitle: Text('Compartilhar no Whatsaap'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            onTap: () async {
                              await controller.compartilharWaths();
                            },
                          ),
                          ListTile(
                            title: Text(
                              'Facebook',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            leading: Icon(
                              IcoFontIcons.facebookMessenger,
                              color: Colors.blue,
                            ),
                            subtitle: Text('Compartilhar no Messenger'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            onTap: () async {
                              await controller.compartilharFacebook();
                            },
                          ),
                          ListTile(
                            title: Text(
                              'SMS',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            leading: Icon(
                              IcoFontIcons.chat,
                              color: Colors.purple,
                            ),
                            subtitle: Text('Compartilhar por SMS'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            onTap: () async {
                              await controller.compartilharSms();
                            },
                          ),
                          ListTile(
                            title: Text(
                              'Email',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            leading: Icon(
                              IcoFontIcons.uiEmail,
                              color: Colors.orange,
                            ),
                            subtitle: Text('Compartilhar no Email'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            onTap: () async {
                              await controller.compartilharEmail();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              childCount: 1,
              semanticIndexOffset: 1,
            ),
          )
        ],
      ),
    );
  }
}
