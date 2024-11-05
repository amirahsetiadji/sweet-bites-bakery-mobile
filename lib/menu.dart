import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sweet Bites Bakery',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Text(
                  'Welcome to Sweet Bites Bakery',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
              GridView.count(
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: ItemHomepage.items.map((ItemHomepage item) {
                  return ItemCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;
  final String snackBarMessage;

  ItemHomepage(this.name, this.icon, this.color, this.snackBarMessage);

  // Tiga item dengan ikon, warna, dan pesan Snackbar
  static final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.list, Colors.pink[400]!, "Kamu telah menekan tombol Lihat Daftar Produk"),
    ItemHomepage("Tambah Produk", Icons.add, Colors.deepOrange[400]!, "Kamu telah menekan tombol Tambah Produk"),
    ItemHomepage("Logout", Icons.logout, Colors.teal[400]!, "Kamu telah menekan tombol Logout"),
  ];
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color, // Gunakan warna spesifik untuk tiap tombol
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(item.snackBarMessage)),
            );
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white, // Ikon diatur ke putih agar kontras dengan warna tombol
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white), // Teks diatur ke putih
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
