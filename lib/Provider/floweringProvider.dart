import 'package:flutter/material.dart';
import 'package:plant_app_ui/model/FloweringModel.dart';
import 'package:plant_app_ui/model/greenModel.dart';

import '../Api/server.dart';

class floweringProvider extends ChangeNotifier {
  List<FloweringModel> listofFloweringplants;

  bool loadingState = false;
  getAllFloweringPlants(List<FloweringModel> listofPlants) async {
    loadingState = true;
    listofFloweringplants = (await getApiFlowering(listofPlants));
    loadingState = false;
    notifyListeners();
  }
}
