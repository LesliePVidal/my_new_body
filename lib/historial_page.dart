// ignore_for_file: unused_local_variable, prefer_const_constructors
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_new_body/model/apoyo.dart';
import 'package:my_new_body/model/item_card.dart';
import 'package:my_new_body/principal_page.dart';

import 'Header.dart';

class HistorialPage extends StatefulWidget {
  @override
  _HistorialPage createState() => _HistorialPage();
}

class _HistorialPage extends State<HistorialPage> {
  List<Object> list = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getAttentionList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 101, 44, 181),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Header(),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                              icon: const Icon(
                                Icons.app_registration,
                                color: Color.fromARGB(255, 71, 70, 70),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => PrincipalPage()));
                              }),
                          Text(
                            "Historial",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 71, 70, 70)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      ListView.builder(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        shrinkWrap: true,
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return Text(
                            "Hola",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 71, 70, 70)),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ))
            ],
          )),
    );
  }

  Future getAttentionList() async {
    var data = await FirebaseFirestore.instance
        .collection("atencion")
        .orderBy('habitacion', descending: true)
        .get();
    setState(() {
      list = List.from(data.docs.map((doc) => Apoyo.fromSnapshot(doc)));
    });
  }
}
