import 'package:flutter/material.dart';
import 'model/product.dart';

class AddToCartPage extends StatelessWidget {
  final List<Product> productsInCart;

  const AddToCartPage({Key? key, required this.productsInCart})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: productsInCart.length,
        itemBuilder: (context, index) {
          final product = productsInCart[index];
          return ListTile(
            leading: Image.asset(
              product.assetName,
              package: product.assetPackage,
              width: 50,
              height: 50,
            ),
            title: Text(product.name),
            subtitle: Text('Price: \$${product.price}'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // TODO: Implement removing product from cart
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total: \$${_calculateTotalPrice(productsInCart)}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement checkout functionality
                },
                child: Text('Checkout'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _calculateTotalPrice(List<Product> products) {
    double total = 0;
    for (var product in products) {
      total += product.price;
    }
    return total;
  }
}
