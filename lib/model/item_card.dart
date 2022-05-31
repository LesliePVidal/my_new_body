// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, avoid_unnecessary_containers
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_new_body/model/Apoyo.dart';

class ItemCard extends StatelessWidget {
  final Apoyo apoyo;

  ItemCard(this.apoyo);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text("${apoyo.habitacion}"),
                ),
                Text("${apoyo.apoyoBrindado}"),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
