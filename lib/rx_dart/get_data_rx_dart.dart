import 'package:rx_dart_getx/data/models/cars_model.dart';
import 'package:rx_dart_getx/data/models/data_model.dart';
import 'package:rx_dart_getx/data/models/my_response.dart';
import 'package:rx_dart_getx/data/repositories/get_companies_repository.dart';
import 'package:rxdart/rxdart.dart';

class GetDataRxDart {
  GetDataRxDart(this.repository) {
    fetchData();
  }
  final _cars = BehaviorSubject<List<CarsModel>>();
  final GetCompaniesRepository repository;

  Stream<List<CarsModel>> get carsStream => _cars.stream;

  fetchData() async {
    MyResponse myResponse = await repository.getData();
    var dataModel = myResponse.data;
    _cars.sink.add(dataModel);
  }
}
