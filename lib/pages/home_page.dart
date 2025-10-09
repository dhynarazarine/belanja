import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/listSection.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      stock: 10,
      rating: 4.5,
      image: 'assets/gula.jpeg',
      description:
          'High-quality sugar perfect for baking and sweetening your favorite dishes.',
    ),
    Item(
      name: 'Salt',
      price: 2000,
      stock: 15,
      rating: 4.0,
      image: 'assets/garam.jpg',
      description: 'Pure and natural salt to enhance the flavor of your meals.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Barang'),
        backgroundColor: Colors.blue[600],
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey[100],
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: ItemCard(item: item),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: const Text(
          'Queenadhynar Azarine D.A - 2341760109',
          style: TextStyle(color: Colors.blueGrey),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
