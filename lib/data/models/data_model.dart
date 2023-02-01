import 'package:rx_dart_getx/data/models/cars_model.dart';

class DataModel {
  List<CarsModel> data;
  DataModel({required this.data});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        data: (json['data'])
            .map((e) => CarsModel.fromJson(e))
            .toList());
  }
}
