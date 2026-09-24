

<?php $__env->startPush('styles'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('css/profile.css')); ?>">
<?php $__env->stopPush(); ?> 

<?php $__env->startSection('title', 'Profil SMKN 1 Cijati'); ?>

<?php $__env->startSection('content'); ?>

<style>
    .profile-page {
        background: #f5f7fa;
        padding-bottom: 60px;
    }

    .profile-header {
        background: linear-gradient(135deg, #0d5ca8, #2188d8);
        color: white;
        text-align: center;
        padding: 20px 20px;
    }

    .profile-header h1 {
        margin: 0 0 10px;
        font-size: 40px;
        font-weight: 700;
    }

    .profile-header p {
        margin: 0;
        font-size: 18px;
    }

    .profile-container {
        width: 90%;
        max-width: 1100px;
        margin: 40px auto;
    }

    .profile-card {
        background: white;
        border-radius: 15px;
        padding: 35px;
        margin-bottom: 25px;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
    }

    .profile-card h2 {
        color: #0d5ca8;
        margin-top: 0;
        margin-bottom: 20px;
        font-size: 28px;
    }

    .profile-card p {
        color: #555;
        font-size: 17px;
        line-height: 1.8;
        text-align: justify;
        margin: 0;
    }

    .section-title {
        color: #0d5ca8;
        font-size: 28px;
        margin-top: 0;
        margin-bottom: 20px;
        border-left: 5px solid #0d5ca8;
        padding-left: 15px;
    }

    .visi-box {
        background: #eef7ff;
        border-left: 5px solid #0d5ca8;
        padding: 25px;
        border-radius: 10px;
        margin-bottom: 30px;
    }

    .visi-box p {
        font-style: italic;
    }

    .misi-list {
        margin: 0;
        padding-left: 25px;
    }

    .misi-list li {
        color: #555;
        font-size: 16px;
        line-height: 1.8;
        margin-bottom: 12px;
        padding-left: 5px;
    }

    .tujuan-box {
        background: #f8f9fa;
        border-radius: 10px;
        padding: 25px;
        border-left: 5px solid #198754;
    }

    .tujuan-box p {
        margin: 0;
    }

    @media (max-width: 768px) {
        .profile-header h1 {
            font-size: 30px;
        }

        .profile-container {
            width: 92%;
        }

        .profile-card {
            padding: 25px;
        }
    }
</style>


<div class="profile-page">

    
    <section class="profile-header">
        <h1>Profil Sekolah</h1>
        <p><?php echo e($profiles->nama_sekolah); ?></p>
    </section>


    <div class="profile-container">

        
        <div class="profile-card">
            <h2>Tentang Sekolah</h2>

            <p>
                <?php echo e($profiles->deskripsi); ?>

            </p>
        </div>


        
        <div class="profile-card">
            <h2 class="section-title">Visi</h2>

            <div class="visi-box">
                <p>
                    <?php echo e($profiles->visi); ?>

                </p>
            </div>
        </div>


        
        <div class="profile-card">
            <h2 class="section-title">Misi</h2>

            <ol class="misi-list">
                <?php $__currentLoopData = preg_split('/\r\n|\r|\n/', $profiles->misi); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $misi): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php if(trim($misi) != ''): ?>
                        <li>
                            <?php echo e(preg_replace('/^\d+\.\s*/', '', trim($misi))); ?>

                        </li>
                    <?php endif; ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </ol>
        </div>


        
        <div class="profile-card">
            <h2 class="section-title">Tujuan</h2>

            <div class="tujuan-box">
                <p>
                    <?php echo e($profiles->tujuan); ?>

                </p>
            </div>
        </div>

    </div>

</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\laragon\www\web-sekolah-ukk-malki\resources\views/profiles.blade.php ENDPATH**/ ?>