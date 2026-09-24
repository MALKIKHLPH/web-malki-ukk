<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Daftar Guru & StafS SMKN 1 Cijati</title>
    <style>
        /* Masukkan kode CSS di atas di sini */
        body { background-color: #f4f6f9; font-family: sans-serif; }
        .container-guru { max-width: 1200px; margin: 40px auto; padding: 0 20px; }
        .judul-halaman { text-align: center; margin-bottom: 40px; color: #2c3e50; }
        .grid-guru { display: grid; grid-template-columns: repeat(auto-fill, minmax(260px, 1fr)); gap: 24px; }
        .card-guru { background: #fff; border-radius: 12px; box-shadow: 0 4px 12px rgba(0,0,0,0.05); padding: 24px 16px; text-align: center; border-top: 4px solid #3498db; transition: 0.3s; }
        .card-guru:hover { transform: translateY(-5px); box-shadow: 0 8px 20px rgba(0,0,0,0.1); }
        .foto-wrapper { width: 80px; height: 80px; margin: 0 auto 15px; border-radius: 50%; overflow: hidden; background-color: #e2e8f0; }
        .foto-wrapper img { widht:100%; height: 100%; object-fit: cover; display: block; }
        .nama-guru { font-size: 15px; font-weight: 600; color: #1e293b; margin-bottom: 8px; }
        .jabatan-guru { font-size: 12px; color: #64748b; background: #f1f5f9; padding: 4px 10px; border-radius: 20px; display: inline-block; }
    </style>
</head>
<body>

    <div class="container-guru">
        <h2 class="judul-halaman">Daftar Dewan Guru & Staf SMKN 1 Cijati</h2>
        
        <div class="grid-guru">
            @foreach ($gurus as $guru)
                <div class="card-guru">
                    <!-- Jika foto ada tampilkan foto, jika null tampilkan huruf awal nama -->
                    <div class="foto-wrapper">
                        @if($guru->foto)
                            <img src="{{ asset('images/' . $guru->foto) }}" alt="{{ $guru->nama_guru }}">
                        @else
                            {{ strtoupper(substr($guru->nama_guru, 0, 1)) }}
                        @endif
                    </div>
                    
                    <div class="nama-guru">{{ $guru->nama_guru }}</div>
                    <div class="jabatan-guru">{{ $guru->jabatan }}</div>
                </div>
            @endforeach
        </div>
    </div>

</body>
</html>