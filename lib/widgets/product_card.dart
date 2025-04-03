import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  ProductCard({required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Image.asset(product.image, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(product.name),
        subtitle: Text(product.price),
        onTap: onTap,
      ),
    );
  }
}