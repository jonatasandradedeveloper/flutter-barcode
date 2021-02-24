import 'package:get/get.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class HomePageController extends GetxController {
  var valorCodigoBarras = '';

  Future<void> escanearCodigoBarras() async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#f45', 'Cancelar', true, ScanMode.BARCODE);

    if (barcodeScanRes == '-1') {
      Get.snackbar('Cancelado', 'Leitura Cancelada');
    } else {
      valorCodigoBarras = barcodeScanRes;
      update();
    }
  }
}
