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

# TUGAS 8
1. **Apa kegunaan `const` di Flutter?**
   Penggunaan `const` di Flutter memungkinkan kita untuk mendefinisikan objek yang nilainya tetap (immutable) dan tidak berubah selama runtime. Penggunaan `const` memberikan beberapa keuntungan, di antaranya:
   
   **Keuntungan Menggunakan `const`:**
   - **Efisiensi memori:** Objek yang ditandai `const` hanya disimpan sekali di memori, sehingga menghemat penggunaan memori.
   - **Peningkatan performa rendering:** Widget yang bersifat `const` dapat di-cache, sehingga tidak perlu dibangun ulang, yang meningkatkan performa aplikasi.
   
   **Kapan Menggunakan `const`:**
   - Untuk widget literal, seperti `Text`, `Icon`, dan `Container`.
   - Untuk objek yang sifatnya tidak bisa diubah, misalnya warna (`Color`), ukuran (`Size`), atau gaya teks (`TextStyle`).
   - Untuk variabel tetap yang bersifat konstan, misalnya URL API atau konfigurasi aplikasi.

   **Kapan Tidak Menggunakan `const`:**
   - Pada objek yang nilainya berubah-ubah (mutable).
   - Saat melibatkan perhitungan yang kompleks.
   - Jika objek hanya digunakan dalam konteks tertentu dan tidak akan digunakan secara global.

2. **Perbandingan `Column` dan `Row` di Flutter:**
   - **Column:** Menyusun widget secara vertikal (dari atas ke bawah). Berguna untuk menyusun elemen yang ditumpuk, seperti judul, deskripsi, dan tombol.
     - **Contoh implementasi:**
       ```dart
       Column(
         children: [
           Text('Ini Judul'),
           SizedBox(height: 16.0),
           Text('Ini Deskripsi'),
           SizedBox(height: 16.0),
           ElevatedButton(
             onPressed: () { /* aksi */ },
             child: Text('Klik Saya'),
           ),
         ],
       )
       ```

   - **Row:** Menyusun widget secara horizontal (dari kiri ke kanan). Berguna untuk menyusun elemen yang sejajar, seperti ikon dan teks.
     - **Contoh implementasi:**
       ```dart
       Row(
         children: [
           Icon(Icons.arrow_back),
           SizedBox(width: 8.0),
           Text('Kembali'),
         ],
       )
       ```

   **Perbedaan Utama:**
   - `Column` digunakan untuk tata letak vertikal, sedangkan `Row` untuk tata letak horizontal.
   - `Column` lebih cocok untuk elemen yang ditumpuk, sementara `Row` untuk elemen yang sejajar.
   - Keduanya bisa digabungkan untuk membuat tata letak yang lebih kompleks, seperti grid atau kartu.

3. **Perbandingan `TextField` dan `NumberField` di Flutter:**
   - **TextField:** Komponen untuk menerima input teks dari pengguna. `TextField` mendukung berbagai kustomisasi, seperti hint text, input formatters, dan validasi.
   - **NumberField:** Digunakan khusus untuk menerima input angka dari pengguna, merupakan turunan `TextField` dengan format input angka.

   **Elemen Input Lain yang Tersedia di Flutter:**
   - **Dropdown:** Untuk memilih satu opsi dari daftar.
   - **Checkbox/Switch:** Untuk input boolean (ya/tidak).
   - **RadioButton:** Untuk memilih satu opsi dari beberapa pilihan.
   - **Slider:** Untuk memilih nilai dalam rentang tertentu.
   - **RangeSlider:** Untuk memilih rentang nilai.
   - **FileInput:** Untuk memilih file dari penyimpanan perangkat.

4. **Pengaturan Tema (Theme) dalam Aplikasi Flutter:**
   - Tema global dapat didefinisikan dalam `main.dart` menggunakan `ThemeData`.
   - Tema mencakup warna, tipografi, dan gaya visual untuk menciptakan konsistensi di seluruh aplikasi.
   - Widget dapat mengambil tema dari `Theme.of(context)`, yang memastikan konsistensi di seluruh aplikasi.
   - Untuk kebutuhan khusus, tema dapat diterapkan hanya pada widget tertentu dengan membungkusnya dalam `Theme` widget.

   Dengan tema yang konsisten, aplikasi Flutter dapat mempertahankan tampilan yang selaras di setiap bagian aplikasi.

5. **Penanganan Navigasi dalam Aplikasi Multi-Halaman di Flutter:**
   - **Navigator** digunakan sebagai stack untuk mengelola perpindahan antar halaman.
   - Rute halaman dapat didefinisikan dalam `main.dart`.
   - Untuk berpindah ke halaman baru, gunakan `Navigator.pushNamed(context, routeName)`.
   - Untuk kembali ke halaman sebelumnya, gunakan `Navigator.pop(context)`.
   - Drawer juga dapat ditambahkan untuk memberikan akses cepat ke halaman-halaman utama dalam aplikasi.