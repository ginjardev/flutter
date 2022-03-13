import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.account_balance_wallet_rounded,
            size: 50,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("This is the wallet page"),
          )
        ],
        )
      ),
    );
  }
}
