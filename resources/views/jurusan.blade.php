<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Jurusan Sekolah</title>
    <!-- Bootstrap 5 CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

    <div class="container py-5">
        <div class="row mb-4">
            <div class="col-md-12 text-center">
                <h2 class="fw-bold">Program Keahlian / Jurusan</h2>
                <p class="text-muted">Pilih jurusan terbaik sesuai dengan minat dan bakat karier masa depan Anda.</p>
            </div>
        </div>

        <div class="row">
            @forelse ($jurusan as $item)
                <div class="col-md-3 mb-4">
                    <div class="card h-100 shadow-sm text-center">
                        <!-- Tampilkan Gambar/Logo Jurusan -->
                        <div class="p-3">
                            @if ($item->gambar)
                                <!-- Mengambil dari folder storage/public atau public/images (sesuaikan penyimpanan) -->
                                <img src="{{ asset('images/' . $item->gambar) }}" class="card-img-top mx-auto" alt="{{ $item->nama_jurusan }}" style="width: 120px; height: 120px; object-fit: cover; border-radius: 50%;">
                            @else
                                <img src="https://via.placeholder.com/120?text={{ $item->singkatan }}" class="card-img-top mx-auto" alt="Default Logo" style="width: 120px; height: 120px; object-fit: cover; border-radius: 50%;">
                            @endif
                        </div>

                        <div class="card-body d-flex flex-column">
                            <!-- Singkatan Badge (Misal: RPL, BDP) -->
                            <span class="badge bg-secondary align-self-center mb-2 px-3 py-1">{{ $item->singkatan }}</span>
                            
                            <h5 class="card-title fw-bold text-dark fs-6">{{ $item->nama_jurusan }}</h5>
                            
                            <!-- Deskripsi Jurusan -->
                            <p class="card-text text-muted small mt-2 flex-grow-1">
                                <!-- Karena di seeder Anda deskripsi menggunakan now() (format tanggal), 
                                     di sini kita cek atau tampilkan teks standar jika berupa timestamp -->
                                {{ is_string($item->deskripsi) ? $item->deskripsi : 'Kompetensi keahlian unggulan dengan fasilitas praktik standar industri modern.' }}
                            </p>

                        
                        </div>
                    </div>
                </div>
            @empty
                <div class="col-12">
                    <div class="alert alert-warning text-center" role="alert">
                        Belum ada data jurusan yang tersedia.
                    </div>
                </div>
            @endforelse
        </div>
    </div>

    <!-- Bootstrap 5 JS Bundle CDN -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>