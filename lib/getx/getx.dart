import 'package:get/get.dart';
import 'package:rx_dart_getx/data/api_seervice/api_service.dart';
import 'package:rx_dart_getx/data/models/my_response.dart';
import 'package:rx_dart_getx/data/repositories/get_companies_repository.dart';

class Controller extends GetxController {
  Controller(this.repository) {
    fetchData();
  }
  final GetCompaniesRepository repository;
  final RxList products = [].obs;

  fetchData() async {
    MyResponse myResponse = await repository.getData();
    products.value = [myResponse];
  }
}
