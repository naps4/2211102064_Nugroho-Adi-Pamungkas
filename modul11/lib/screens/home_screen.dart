import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';
import '../models/item.dart';
import 'cart_screen.dart';
import '../pemformat harga/curerency_formater.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Item> availableItems = [
    Item(id: 1, name: "Wiskas", price: 15000000),
    Item(id: 2, name: "Kandang kucing", price: 2530000),
    Item(id: 3, name: "Makanan Anjing", price: 6000000),
    Item(id: 4, name: "Pembershih Kandang", price: 1500000),
    Item(id: 5, name: "Mainan Hewan", price: 1500000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Petshop"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: availableItems.length,
        itemBuilder: (context, index) {
          final item = availableItems[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text(formatRupiah(item.price)),
            trailing: ElevatedButton(
              onPressed: () {
                Provider.of<CartModel>(context, listen: false).add(item);
              },
              child: const Text("Tambah"),
            ),
          );
        },
      ),
    );
  }
}
