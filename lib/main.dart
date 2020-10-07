import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    theme: ThemeData(primaryColor: Colors.black),
    defaultTransition: Transition.fade,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.short_text,
              size: 30,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: () => {},
            )
          ],
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  title: Text(
                    'Lucas',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  subtitle: Text(
                    'Bem-vindo!',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.white.withAlpha(25),
                  child: Container(
                    width: Get.width,
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'W',
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'cursive',
                                color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                '4025 5164 2135 6451',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.content_copy,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                onPressed: () {
                                  Clipboard.setData(ClipboardData(
                                      text: '4025 5164 2135 6451'));
                                  Get.rawSnackbar(
                                      duration: Duration(seconds: 2),
                                      message:
                                          'Copiado para a Área de Transferência');
                                },
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Titular',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 10),
                                  ),
                                  Text(
                                    'LUCAS FOO BAR',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Image.asset(
                                'assets/img/mastercard.png',
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Total Gasto',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        subtitle: Text(
                          'R\$ 1.800,00',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: Divider(
                  color: Colors.white.withAlpha(50),
                ),
              ),
              Expanded(
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (notification) {
                    notification.disallowGlow();
                    return null;
                  },
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 22),
                        leading: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.white.withAlpha(25),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.store,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        title: Text(
                          'Título',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Legenda',
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Text(
                          'R\$ 45',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
