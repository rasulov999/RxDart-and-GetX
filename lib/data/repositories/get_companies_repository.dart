import 'package:rx_dart_getx/data/api_seervice/api_service.dart';
import 'package:rx_dart_getx/data/models/my_response.dart';

class GetCompaniesRepository {
  GetCompaniesRepository({required this.apiService});
  final ApiService apiService;

  Future<MyResponse> getData() => apiService.getCountriesData();
}
