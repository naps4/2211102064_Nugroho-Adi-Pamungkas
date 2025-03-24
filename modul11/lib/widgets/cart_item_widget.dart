import 'package:flutter/material.dart';
import '../models/item.dart';
import '../pemformat harga/curerency_formater.dart';

class CartItemWidget extends StatelessWidget {
  final Item item;

  const CartItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.name),
      subtitle: Text(formatRupiah(item.price)),
    );
  }
}
