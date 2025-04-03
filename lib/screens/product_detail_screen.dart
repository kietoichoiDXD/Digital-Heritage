import 'package:flutter/material.dart';
import '../core/theme/app_text_styles.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(product.image, height: 200, width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(product.name, style: AppTextStyles.heading1),
            SizedBox(height: 8),
            Text(product.price, style: TextStyle(fontSize: 20, color: Colors.green)),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}