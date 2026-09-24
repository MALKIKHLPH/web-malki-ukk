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
            <?php $__empty_1 = true; $__currentLoopData = $fasilitas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                <div class="col-md-4 mb-4">
                    <div class="card h-100 shadow-sm">
                        <!-- Menampilkan gambar dari folder public/images/ -->
                        <img src="<?php echo e(asset('images/' . $item->gambar)); ?>" class="card-img-top" alt="<?php echo e($item->nama_fasilitas); ?>" style="height: 200px; object-fit: cover;">
                        
                        <div class="card-body">
                            <h5 class="card-title"><?php echo e($item->nama_fasilitas); ?></h5>
                            <p class="card-text text-muted"><?php echo e($item->deskripsi); ?></p>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                <div class="col-12">
                    <p class="text-center">Belum ada data fasilitas.</p>
                </div>
            <?php endif; ?>
        </div>
    </div>

    <!-- JS Bootstrap 5 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html><?php /**PATH C:\laragon\www\web-sekolah-ukk-malki\resources\views/fasilitas.blade.php ENDPATH**/ ?>