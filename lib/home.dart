import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Row(
                children: [
                  Text('Settings'),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ];
        },
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            children: [
              item(Colors.yellow),
              item(Colors.teal),
              item(Colors.green),
              item(Colors.red),
              item(Colors.blue),
              item(Colors.grey),
            ],
          ),
        )),
      ),
    );
  }

  Container item(Color color) {
    return Container(
      height: 200,
      color: color,
    );
  }
}
