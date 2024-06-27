import 'package:get/get.dart';

class EditpumpdetailController extends GetxController {
  var waterLevel = 90.obs;
  var sensorHeight = 120.obs;

  void incrementWaterLevel() {
    waterLevel++;
  }

  void decrementWaterLevel() {
    if (waterLevel > 0) {
      waterLevel--;
    }
  }

  void incrementSensorHeight() {
    sensorHeight++;
  }

  void decrementSensorHeight() {
    if (sensorHeight > 0) {
      sensorHeight--;
    }
  }
}
