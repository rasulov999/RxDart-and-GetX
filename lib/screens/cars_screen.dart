import 'package:flutter/material.dart';
import 'package:rx_dart_getx/data/api_seervice/api_service.dart';
import 'package:rx_dart_getx/data/repositories/get_companies_repository.dart';
import 'package:rx_dart_getx/rx_dart/get_data_rx_dart.dart';
import 'package:rx_dart_getx/screens/car_item.dart';

class CarsScreen extends StatefulWidget {
  const CarsScreen({super.key});

  @override
  State<CarsScreen> createState() => _CarsScreenState();
}

class _CarsScreenState extends State<CarsScreen> {
  final GetDataRxDart _getDataRxDart =
      GetDataRxDart(GetCompaniesRepository(apiService: ApiService()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cars Screen"),
      ),
      body: StreamBuilder(
          stream: _getDataRxDart.carsStream,
          builder: (context, snapshot) {
            return ListView(
              children: List.generate(
                snapshot.data!.length,
                (index) => Caritem(
                  price: snapshot.data![index].averagePrice,
                  imgUrl: snapshot.data![index].logo,
                  model: snapshot.data![index].carModel,
                ),
              ),
            );
          }),
    );
  }
}
