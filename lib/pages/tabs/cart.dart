import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Text("settings "),
    );
  }
}
