import 'package:flutter/material.dart';

class VpnCountry extends StatelessWidget {
  const VpnCountry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Text("A"),
        ),
        title: Text(
          "America",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38),
        ),
        trailing: Icon(Icons.keyboard_arrow_right_sharp),
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Text("A"),
                    ),
                    title: Text(
                      "America",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black38),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right_sharp),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Text("B"),
                    ),
                    title: Text(
                      "Bangladesh",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black38),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right_sharp),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Text("C"),
                    ),
                    title: Text(
                      "Canada",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black38),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right_sharp),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
