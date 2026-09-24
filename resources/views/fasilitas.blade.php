<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fasilitas - SMKN 1 Cijati</title>
    <!-- CSS Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="container my-5">
        <h2 class="text-center mb-4">Fasilitas SMKN 1 Cijati</h2>
        
        <div class="row">
            @forelse($fasilitas as $item)
                <div class="col-md-4 mb-4">
                    <div class="card h-100 shadow-sm">
                        <!-- Menampilkan gambar dari folder public/images/ -->
                        <img src="{{ asset('images/' . $item->gambar) }}" class="card-img-top" alt="{{ $item->nama_fasilitas }}" style="height: 200px; object-fit: cover;">
                        
                        <div class="card-body">
                            <h5 class="card-title">{{ $item->nama_fasilitas }}</h5>
                            <p class="card-text text-muted">{{ $item->deskripsi }}</p>
                        </div>
                    </div>
                </div>
            @empty
                <div class="col-12">
                    <p class="text-center">Belum ada data fasilitas.</p>
                </div>
            @endforelse
        </div>
    </div>

    <!-- JS Bootstrap 5 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>