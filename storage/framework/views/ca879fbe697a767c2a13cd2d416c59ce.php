<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Daftar Ekstrakurikuler</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 40px 20px;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #f5f7fa;
            color: #1f2937;
        }

        .container {
            max-width: 1200px;
            margin: auto;
        }

        h1 {
            text-align: center;
            margin-bottom: 35px;
            color: #172554;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
        }

        .card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.12);
        }

        .logo-container {
            width: 100%;
            height: 220px;
            background-color: #eef2ff;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        .logo-container img {
            width: 100%;
            height: 100%;
            object-fit: contain;
            padding: 20px;
        }

        .content {
            padding: 20px;
        }

        .nama {
            margin: 0 0 10px;
            color: #1d4ed8;
            font-size: 22px;
            font-weight: bold;
        }

        .pembina {
            margin-bottom: 15px;
            font-size: 14px;
            color: #555;
        }

        .pembina strong {
            color: #222;
        }

        .deskripsi {
            font-size: 14px;
            line-height: 1.7;
            color: #555;
            text-align: justify;
        }

        .kosong {
            background: #fff3cd;
            color: #856404;
            padding: 20px;
            text-align: center;
            border-radius: 10px;
        }
    </style>
</head>

<body>

<div class="container">

    <h1>Daftar Ekstrakurikuler</h1>

    <?php if($ekstrakurikuler->count() > 0): ?>

        <div class="grid">

            <?php $__currentLoopData = $ekstrakurikuler; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $eskul): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                <div class="card">

                    <div class="logo-container">

                        <?php if($eskul->logo): ?>
                            <img
                                src="<?php echo e(asset('images/' . $eskul->logo)); ?>"
                                alt="<?php echo e($eskul->nama_ekskul); ?>"
                            >
                        <?php else: ?>
                            <span>Tidak ada logo</span>
                        <?php endif; ?>

                    </div>

                    <div class="content">

                        <h2 class="nama">
                            <?php echo e($eskul->nama_ekskul); ?>

                        </h2>

                        <div class="pembina">
                            <strong>Pembina:</strong>
                            <?php echo e($eskul->pembina); ?>

                        </div>

                        <div class="deskripsi">
                            <?php echo e($eskul->deskripsi); ?>

                        </div>

                    </div>

                </div>

            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

        </div>

    <?php else: ?>

        <div class="kosong">
            Belum ada data ekstrakurikuler yang tersedia.
        </div>

    <?php endif; ?>

</div>

</body>
</html>
<?php /**PATH C:\laragon\www\web-sekolah-ukk-malki\resources\views/ekstrakurikuler.blade.php ENDPATH**/ ?>