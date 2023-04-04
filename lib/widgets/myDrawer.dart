import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            color: Colors.blue,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 10),
              children: [],
            ),
          ),
          Card(
            elevation: 25,
            child: ListTile(
              title: Text(
                "Log out",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              leading: Icon(Icons.logout, color: Colors.red),
              trailing:
                  Icon(Icons.keyboard_arrow_right_sharp, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
