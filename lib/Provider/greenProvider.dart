import 'package:flutter/material.dart';
import 'package:plant_app_ui/model/greenModel.dart';

import '../Api/server.dart';

class greenProvider extends ChangeNotifier {
  List<greenModel> listofGreenplants;

  bool loadingState = false;
  getAllGreenPlants(List<greenModel> listofPlants) async {
    loadingState = true;
    listofGreenplants = (await getApigreen(listofPlants));
    loadingState = false;
    notifyListeners();
  }
}
