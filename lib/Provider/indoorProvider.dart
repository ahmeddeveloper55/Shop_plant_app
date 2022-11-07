import 'package:flutter/material.dart';
import 'package:plant_app_ui/model/greenModel.dart';
import 'package:plant_app_ui/model/indoormodel.dart';

import '../Api/server.dart';

class indoorProvider extends ChangeNotifier {
  List<indoormodel> listofIndoorplants;

  bool loadingState = false;
  getAllIndoorPlants(List<indoormodel> listofPlants) async {
    loadingState = true;
    listofIndoorplants = (await getApiIndoor(listofPlants));
    loadingState = false;
    notifyListeners();
  }
}
