# ROVE HUB — salinan uji

Salinan ROVE HUB yang di-host supaya tiap PIC bisa membukanya dari perangkat
masing-masing. Tujuannya **menguji alur kerja antar PIC**: apakah tugas berpindah
ke jabatan yang benar, apakah pengingat muncul di orang yang tepat, dan bagaimana
rasanya menerima notifikasi.

## Aturan pemakaian salinan ini

**Jangan isi data yang sebenarnya.** Tidak ada nama client asli, harga vendor asli,
margin asli, atau data gaji. Halaman ini memakai backend uji dan alamatnya bisa
dibuka siapa pun yang mengetahuinya. Pita merah di bawah layar mengingatkan ini
selama HUB dibuka dari alamat web.

## Cara memakai

1. Buka alamat HUB, lalu **Masuk** dengan jabatanmu.
2. Buka **⚙ Pengaturan**, tempel URL backend uji (dibagikan terpisah, bukan di sini),
   lalu centang *Sinkron cloud*. Tanpa langkah ini datamu hanya tersimpan di
   perangkatmu sendiri dan PIC lain tak akan melihatnya.
3. Klik **🔔 Nyalakan notifikasi browser** di kotak jabatan kalau ingin diberi tahu
   saat ada tugas baru.

Jumlah tugas yang menunggumu muncul di judul tab, misalnya `(3) ROVE HUB`, jadi
terlihat walau tabnya di latar belakang.

## Login per tab

Jabatan disimpan **per tab**, bukan per browser. Jadi kamu bisa membuka dua tab dan
masuk sebagai dua jabatan berbeda untuk menguji serah-terima pekerjaan; me-refresh
salah satunya tidak mengubah yang lain. Tab baru mewarisi jabatan terakhir sebagai
titik awal, dan bisa diganti tanpa mengganggu tab sebelah.

## Memperbarui

Berkas sumbernya ada di folder kerja Rove, bukan di sini. Untuk mendorong versi
terbaru ke web:

```powershell
.\perbarui.ps1
```

Skrip itu menyalin `Rove_Hub_App.html` terbaru menjadi `index.html`, lalu commit
dan push. GitHub Pages menerbitkannya ulang sekitar satu menit kemudian.
