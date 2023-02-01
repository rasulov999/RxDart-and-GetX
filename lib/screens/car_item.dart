import 'package:flutter/material.dart';

class Caritem extends StatelessWidget {
  const Caritem({super.key, required this.imgUrl, required this.model, required this.price});
  final String imgUrl;
  final String model;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(padding:  const EdgeInsets.symmetric(vertical: 20),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                imgUrl,
                height: 50,
              ),
              Text(model),
              Text("$price\$"),
            ],
          ),
        ),
      ),
    );
  }
}
