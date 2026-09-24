@extends('layouts.app')

@section('content')
<div class="kontak-container">
    <h2 class="kontak-title">Hubungi Kami</h2>
    <p class="kontak-subtitle">Ada pertanyaan atau saran? Silakan kirim pesan kepada kami.</p>

    <div class="kontak-wrapper">
        <!-- Informasi Detail Kontak -->
        <div class="kontak-info">
            <h3>Informasi Sekolah</h3>
            <p><strong>Alamat:</strong> Jl. Raya Cijati No. 1, Cianjur, Jawa Barat</p>
            <p><strong>Email:</strong> info@smkn1cijati.sch.id</p>
            <p><strong>Telepon:</strong> (0263) 123456</p>
            <p><strong>Jam Operasional:</strong> Senin - Jumat (07.00 - 15.30 WIB)</p>
        </div>

        <!-- Form Kirim Pesan -->
        <div class="kontak-form">
            <form action="#" method="POST">
                @csrf
                <div class="form-group">
                    <label for="nama">Nama Lengkap</label>
                    <input type="text" id="nama" name="nama" placeholder="Masukkan nama Anda" required>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" placeholder="Masukkan email Anda" required>
                </div>

                <div class="form-group">
                    <label for="pesan">Pesan</label>
                    <textarea id="pesan" name="pesan" rows="5" placeholder="Tuliskan pesan Anda di sini..." required></textarea>
                </div>

                <button type="submit" class="btn-kirim">Kirim Pesan</button>
            </form>
        </div>
    </div>
</div>
@endsection