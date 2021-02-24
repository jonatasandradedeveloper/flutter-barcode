import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './home_page_controller.dart';

class HomePage extends StatelessWidget {
  HomePage() {
    Get.put(HomePageController());
  }

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BarCode Scanner'),
        ),
        body: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Valor do codigo de barras:',
                style: Get.theme.textTheme.headline5
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.red),
              ),
              GetBuilder<HomePageController>(builder: (controller) {
                return Text(
                  controller.valorCodigoBarras,
                  style: Get.theme.textTheme.headline5,
                );
              }),
              SizedBox(
                height: 10,
              ),
              TextButton.icon(
                  onPressed: () =>
                      Get.find<HomePageController>().escanearCodigoBarras(),
                  icon: Icon(Icons.qr_code_scanner_sharp),
                  label: Text(
                    'Ler código de barras',
                    style: Get.theme.textTheme.headline6,
                  ))
            ],
          ),
        ));
  }
}
