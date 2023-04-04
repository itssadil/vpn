import 'dart:async';

import 'package:bi_vpn/pages/subPages/vpnBtn.dart';
import 'package:bi_vpn/pages/subPages/vpnCountry.dart';
import 'package:bi_vpn/providers/onPower.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'subPages/vpnTimer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final pressBtn = Provider.of<OnPower>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      pressBtn.vpnTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Brain VPN"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [VpnTimer(), VpnBtn(), VpnCountry()],
      ),
    );
  }
}
