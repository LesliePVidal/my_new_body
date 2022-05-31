import 'package:flutter/material.dart';

import 'Header.dart';
import 'InputWrapper.dart';

class PrincipalPage extends StatelessWidget {
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
                    child: InputWrapper()),
              ),
            ],
          )),
    );
  }
}
