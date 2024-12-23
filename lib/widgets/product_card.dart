import 'package:flutter/material.dart';
import 'package:sweet_bites_bakery/screens/productentry_form.dart';

class ItemHomepage {
     final String name;
     final IconData icon;

     ItemHomepage(this.name, this.icon);
 }


class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 

  // Helper method untuk menentukan warna berdasarkan nama item
  Color _getButtonColor(String name) {
    switch (name) {
      case "Lihat Produk":
        return const Color(0xFFEC407A);
      case "Add Product":
        return const Color(0xFFEF5350); 
      case "Logout":
        return const Color(0xFF26A69A);
      default:
        return Colors.pink;  // Default color
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: _getButtonColor(item.name),
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),
      
      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}"))
            );

          // Navigate ke route yang sesuai
          if (item.name == "Add Product") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProductEntryFormPage()),
            );
          }
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}