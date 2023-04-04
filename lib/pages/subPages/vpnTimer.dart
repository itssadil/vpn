import 'package:bi_vpn/providers/onPower.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VpnTimer extends StatelessWidget {
  const VpnTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<OnPower>(builder: (context, value, child) {
      return AnimatedOpacity(
        duration: Duration(seconds: 2),
        opacity: value.powerBtn ? 1 : 0,
        child: Card(
          margin: EdgeInsets.only(top: 10),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: RichText(
              text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  children: [
                    TextSpan(
                      text: value.hr < 10
                          ? "0" + value.hr.toString() + ":"
                          : value.hr.toString() + ":",
                    ),
                    TextSpan(
                      text: value.min < 10
                          ? "0" + value.min.toString() + ":"
                          : value.min.toString() + ":",
                    ),
                    TextSpan(
                      text: value.sec < 10
                          ? "0" + value.sec.toString()
                          : value.sec.toString(),
                    ),
                  ]),
            ),
          ),
        ),
      );
    });
  }
}
