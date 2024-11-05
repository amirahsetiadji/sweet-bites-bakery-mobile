# Sweet Bites Bakery

# TUGAS 7

## 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

- **Stateless Widget**: Stateless widget adalah widget yang tidak memiliki state, artinya widget ini tidak dapat berubah setelah diinisialisasi. Contohnya adalah widget yang hanya menampilkan data statis atau konten yang tidak perlu diperbarui. Stateless widget hanya dibangun sekali, dan jika ada perubahan, seluruh widget harus dibuat ulang.

- **Stateful Widget**: Stateful widget adalah widget yang memiliki state, memungkinkan perubahan data atau UI secara dinamis selama aplikasi berjalan. State dari widget ini disimpan dalam objek terpisah yang disebut `State`, dan setiap kali ada perubahan, Flutter akan membangun ulang bagian dari widget tersebut. Contoh penggunaan stateful widget adalah tombol yang memperbarui tampilan saat ditekan.

- **Perbedaan**:
  - Stateless widget tidak bisa berubah setelah dibuat, sedangkan stateful widget bisa berubah.
  - Stateful widget memiliki objek `State` untuk mengelola perubahan, sedangkan stateless widget tidak memiliki objek `State`.

## 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

- **Scaffold**: Memberikan struktur dasar halaman, dengan AppBar, body, dan FloatingActionButton.
- **AppBar**: Menampilkan header atau judul pada bagian atas layar aplikasi.
- **Padding**: Memberikan jarak antara widget dan area sekitarnya.
- **Column**: Menyusun widget secara vertikal.
- **Row**: Menyusun widget secara horizontal.
- **GridView.count**: Membuat layout grid dengan jumlah kolom tetap, digunakan untuk menampilkan item-item secara terstruktur.
- **Card**: Membuat kotak kartu dengan bayangan untuk menampilkan konten.
- **Icon**: Menampilkan ikon tertentu pada aplikasi.
- **Text**: Menampilkan teks di layar.
- **InkWell**: Menambahkan efek sentuhan pada widget dan mengatur aksi ketika widget ditekan.
- **SnackBar**: Menampilkan pesan sementara di bagian bawah layar.

## 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

- **Fungsi `setState()`**: Fungsi `setState()` digunakan dalam stateful widget untuk memberi tahu Flutter bahwa ada perubahan pada state yang perlu diterapkan pada UI. Ketika `setState()` dipanggil, Flutter akan membangun ulang widget yang dipengaruhi oleh perubahan state.
- **Variabel yang Terpengaruh**: Variabel yang dideklarasikan dalam kelas `State` dari stateful widget dapat diperbarui dengan `setState()`. Misalnya, variabel penghitung (`counter`) yang diperbarui setiap kali tombol ditekan akan diperbarui dengan `setState()` agar perubahan tampil di layar.

## 4. Jelaskan perbedaan antara const dengan final.

- **const**: `const` digunakan untuk variabel yang harus diketahui nilainya pada waktu kompilasi dan tidak dapat diubah. Nilai `const` bersifat tetap dan immutable di seluruh aplikasi.
- **final**: `final` digunakan untuk variabel yang nilainya ditetapkan satu kali dan tidak dapat diubah setelah inisialisasi. Nilai `final` dapat ditentukan pada runtime.

## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

- **Menggunakan Stateless dan Stateful Widget**: Pada aplikasi ini, `MyHomePage` diimplementasikan sebagai stateless widget karena halaman tidak membutuhkan perubahan state.
- **Menyusun Widget untuk Layout**: Widget seperti `Column`, `Row`, dan `GridView` digunakan untuk menyusun tata letak elemen di halaman. Saya menggunakan `Padding` untuk memberi ruang dan `Card` untuk menampilkan informasi dalam kotak.
- **Mengimplementasikan Snackbar**: `InkWell` digunakan pada tombol dengan fungsi `onTap` untuk menampilkan `SnackBar` ketika tombol ditekan, menunjukkan pesan sesuai dengan tombol yang dipilih.
- **Menggunakan const dan final**: `const` digunakan untuk nilai yang bersifat konstan di seluruh aplikasi, seperti teks statis, sedangkan `final` digunakan untuk variabel yang nilainya tetap setelah diinisialisasi, seperti item dalam `ItemHomepage`.
