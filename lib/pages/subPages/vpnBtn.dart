import 'package:bi_vpn/providers/onPower.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class VpnBtn extends StatelessWidget {
  const VpnBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pressBtn = Provider.of<OnPower>(context, listen: false);
    return InkWell(
      onTap: () {
        pressBtn.pressPower();
      },
      child: Consumer<OnPower>(
        builder: (context, value, child) {
          return Lottie.asset(
            "assets/json/vpnSwitch.json",
            animate: value.powerBtn,
          );
        },
      ),
    );
  }
}
