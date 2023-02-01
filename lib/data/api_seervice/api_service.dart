import 'package:dio/dio.dart';
import 'package:rx_dart_getx/data/api_seervice/api_client.dart';
import 'package:rx_dart_getx/data/models/cars_model.dart';
import 'package:rx_dart_getx/data/models/data_model.dart';
import 'package:rx_dart_getx/data/models/my_response.dart';

class ApiService extends ApiClient {
  Future<MyResponse> getCountriesData() async {
    MyResponse myResponse = MyResponse(error: "");
    try {
      Response response = await dio.get("${dio.options.baseUrl}/companies");
     if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        myResponse.data = ((response.data)["data"] as List?)
                ?.map((e) => CarsModel.fromJson(e))
                .toList() ??
            [];
      }
    } catch (err) {
      myResponse.error = err.toString();
    }
    return myResponse;
  }
}
