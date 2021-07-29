import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountListOpt extends StatefulWidget {
  @override
  _AccountListOptState createState() => _AccountListOptState();
}

class _AccountListOptState extends State<AccountListOpt> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                child: Center(
                  child: Text("Yellow help pls"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
