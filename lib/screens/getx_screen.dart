import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:rx_dart_getx/data/api_seervice/api_service.dart';
import 'package:rx_dart_getx/data/repositories/get_companies_repository.dart';
import 'package:rx_dart_getx/getx/getx.dart';

class GetxScreen extends StatefulWidget {
  const GetxScreen({super.key});

  @override
  State<GetxScreen> createState() => _GetxScreenState();
}

class _GetxScreenState extends State<GetxScreen> {
  final Controller controller = Get.put(Controller(GetCompaniesRepository(apiService: ApiService())));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("getx screen"),
      ),body: Column(
        children: [
          Obx(() => Text("")),
        ],
      ),
    );
  }
}
