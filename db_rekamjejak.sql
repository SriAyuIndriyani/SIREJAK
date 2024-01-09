-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Des 2023 pada 01.17
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rekamjejak`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_11_20_021919_tb_role', 1),
(3, '2023_11_21_160121_tb_user', 1),
(4, '2023_11_23_084522_tb_biodata', 1),
(5, '2023_11_26_040247_tb_pendidikan', 1),
(6, '2023_11_26_115853_tb_hibah', 1),
(7, '2023_11_26_130522_tb_jabatan', 1),
(8, '2023_11_26_141403_tb_mengajar', 1),
(9, '2023_11_26_143116_tb_patendanhaki', 1),
(10, '2023_11_27_022613_tb_pengabdian', 1),
(11, '2023_11_27_022951_tb_penelitian', 1),
(12, '2023_11_27_024857_tb_publikasi', 1),
(13, '2023_11_27_031132_tb_seminardanpelatihan', 1),
(14, '2023_12_04_004952_tb_buku', 1),
(15, '2023_12_05_124514_tb_prodi', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_biodata`
--

CREATE TABLE `tb_biodata` (
  `id_biodata` bigint(20) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nidn` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nik` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_profile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_biodata`
--

INSERT INTO `tb_biodata` (`id_biodata`, `id`, `nama`, `nidn`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `nik`, `agama`, `email`, `no_hp`, `jenis_kelamin`, `created_at`, `updated_at`, `photo_profile`) VALUES
(1, 2, 'Andri Nofiar Am', 11111111, 'JL. Pangkalan Durian', 'Bangkinang', '2023-12-10', '14720110321312', 'Islam', 'andrinofiaram@gmail.com', '082288190446', 'Laki-laki', '2023-12-10 09:58:28', '2023-12-10 09:58:28', 'photo_profile/6575ee34c65f3_IMG_20220406_134027.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `tahun_terbit` date NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `lokasi_terbit` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `id`, `tahun_terbit`, `isbn`, `kategori`, `judul`, `link`, `lokasi_terbit`, `penerbit`, `autor`, `created_at`, `updated_at`) VALUES
(1, 3, '2023-11-29', 'asdasdsdfsdfsdfsd', 'adasdsdfsd', 'asdasdsdfs', 'asdasdfsd', 'dasdsdfs', 'adasdfsdf', 'asdasdasda', '2023-12-11 07:00:33', '2023-12-11 07:07:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hibah`
--

CREATE TABLE `tb_hibah` (
  `id_hibah` bigint(20) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `nama_hibah` varchar(255) NOT NULL,
  `tanggal_hibah` date NOT NULL,
  `lokasi_hibah` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_hibah`
--

INSERT INTO `tb_hibah` (`id_hibah`, `id`, `nama_hibah`, `tanggal_hibah`, `lokasi_hibah`, `created_at`, `updated_at`) VALUES
(1, 3, 'sdfsdfsdfsdfsd', '2023-12-11', 'sfasdasdad', '2023-12-11 05:56:42', '2023-12-11 05:56:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jabatan`
--

CREATE TABLE `tb_jabatan` (
  `id_jabatan` bigint(20) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `tahun_mulai` date NOT NULL,
  `tahun_selesai` date NOT NULL,
  `posisi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_jabatan`
--

INSERT INTO `tb_jabatan` (`id_jabatan`, `id`, `tahun_mulai`, `tahun_selesai`, `posisi`, `created_at`, `updated_at`) VALUES
(1, 3, '2023-12-11', '2023-12-11', 'asdfsdasdasdas', '2023-12-11 07:47:14', '2023-12-11 07:47:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mengajar`
--

CREATE TABLE `tb_mengajar` (
  `id_mengajar` bigint(20) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `jenis_pengajaran` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_mengajar`
--

INSERT INTO `tb_mengajar` (`id_mengajar`, `id`, `jenis_pengajaran`, `created_at`, `updated_at`) VALUES
(1, 3, 'aku saja', '2023-12-11 07:09:47', '2023-12-11 07:19:20'),
(2, 3, 'iay ioyasd', '2023-12-11 07:12:45', '2023-12-11 07:19:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_patendanhaki`
--

CREATE TABLE `tb_patendanhaki` (
  `id_patendanhaki` bigint(20) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_patendanhaki`
--

INSERT INTO `tb_patendanhaki` (`id_patendanhaki`, `id`, `nama`, `tanggal_terima`, `created_at`, `updated_at`) VALUES
(1, 3, 'asdasdasdas', '2023-12-01', '2023-12-11 08:03:04', '2023-12-11 08:03:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pendidikan`
--

CREATE TABLE `tb_pendidikan` (
  `id_pendidikan` bigint(20) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `gelar` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `perguruan_tinggi` varchar(255) NOT NULL,
  `asal_perguruan_tinggi` varchar(255) NOT NULL,
  `tanggal_kelulusan` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_pendidikan`
--

INSERT INTO `tb_pendidikan` (`id_pendidikan`, `id`, `gelar`, `jurusan`, `perguruan_tinggi`, `asal_perguruan_tinggi`, `tanggal_kelulusan`, `created_at`, `updated_at`) VALUES
(1, 3, 'asdasdasdas', 'adasdas', 'dasdasdas', 'asdasdas', '2023-12-11', '2023-12-11 05:35:29', '2023-12-11 05:35:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penelitian`
--

CREATE TABLE `tb_penelitian` (
  `id_penelitian` bigint(20) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `judul_penelitian` varchar(255) NOT NULL,
  `tahun_penelitian` date NOT NULL,
  `lokasi_penelitian` varchar(255) NOT NULL,
  `link_penelitian` varchar(255) NOT NULL,
  `sumber_dana` enum('internal','eksternal','mandiri') NOT NULL,
  `nama_pemberi_dana` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_penelitian`
--

INSERT INTO `tb_penelitian` (`id_penelitian`, `id`, `judul_penelitian`, `tahun_penelitian`, `lokasi_penelitian`, `link_penelitian`, `sumber_dana`, `nama_pemberi_dana`, `created_at`, `updated_at`) VALUES
(1, 2, 'Pengabdian', '2023-09-13', 'Bangkinang', '1312312312312', 'internal', 'Politeknik Kampar', '2023-12-10 10:02:21', '2023-12-11 04:10:01'),
(3, 2, 'sadfdsdfsdf', '2023-12-07', 'sfsdfsdasdasdasdasdasd', 'sdfsdfsd', 'internal', 'Politeknik Kampar', '2023-12-11 04:04:34', '2023-12-11 04:09:51'),
(4, 3, 'asdadas', '2023-11-15', 'Bangkinang', 'asdassadasda', 'eksternal', 'Politeknik Kampar', '2023-12-11 05:13:02', '2023-12-11 05:13:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengabdian`
--

CREATE TABLE `tb_pengabdian` (
  `id_pengabdian` bigint(20) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `judul_kegiatan` varchar(255) NOT NULL,
  `tahun_kegiatan` date NOT NULL,
  `lokasi_kegiatan` varchar(255) NOT NULL,
  `link_pengabdian` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_pengabdian`
--

INSERT INTO `tb_pengabdian` (`id_pengabdian`, `id`, `id_prodi`, `judul_kegiatan`, `tahun_kegiatan`, `lokasi_kegiatan`, `link_pengabdian`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'adasdas', '2023-12-10', 'adasda', 'adasdas', '2023-12-10 10:41:06', '2023-12-10 10:41:06'),
(4, 2, 1, 'rwerwerwerwe', '2023-12-21', 'werewrwe', 'rwerwerew', '2023-12-10 11:03:44', '2023-12-10 11:14:18'),
(5, 3, 2, 'Okeeeee', '2023-12-11', 'adasda', 'asdasdasdas', '2023-12-11 05:14:03', '2023-12-11 05:14:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_prodi`
--

CREATE TABLE `tb_prodi` (
  `id_prodi` bigint(20) UNSIGNED NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_prodi`
--

INSERT INTO `tb_prodi` (`id_prodi`, `prodi`, `created_at`, `updated_at`) VALUES
(1, 'Program Studi Teknik Informatika', '2023-12-10 09:38:23', '2023-12-10 09:38:23'),
(2, 'Program Studi Teknik Pengolahan Sawit', '2023-12-10 09:38:55', '2023-12-10 09:38:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_publikasi`
--

CREATE TABLE `tb_publikasi` (
  `id_publikasi` bigint(20) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `kategori_publikasi` enum('jurnal nasional terakreditasi','jurnal nasional tidak terakreditasi','jurnal internasional terakreditasi','jurnal internasional tidak terakreditasi','prosiding nasional','prosiding internasional') NOT NULL,
  `nama_publikasi` varchar(255) NOT NULL,
  `tahun_publikasi` date NOT NULL,
  `link_publikasi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_publikasi`
--

INSERT INTO `tb_publikasi` (`id_publikasi`, `id`, `id_prodi`, `kategori_publikasi`, `nama_publikasi`, `tahun_publikasi`, `link_publikasi`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'jurnal nasional tidak terakreditasi', 'asdfsdf', '2023-12-04', 'werewrwerw', '2023-12-10 11:29:31', '2023-12-10 11:29:31'),
(2, 3, 2, 'jurnal nasional terakreditasi', 'asdasdas', '2023-12-11', 'asdasdasdas', '2023-12-11 05:15:52', '2023-12-11 05:15:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_role`
--

CREATE TABLE `tb_role` (
  `id_role` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_role`
--

INSERT INTO `tb_role` (`id_role`, `role`, `created_at`, `updated_at`) VALUES
(1, 'P3M', '2023-12-10 09:30:10', '2023-12-10 09:30:10'),
(2, 'DOSEN', '2023-12-10 09:30:17', '2023-12-10 09:30:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_seminardanpelatihan`
--

CREATE TABLE `tb_seminardanpelatihan` (
  `id_seminardanpelatihan` bigint(20) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `tema_seminardanpelatihan` varchar(255) NOT NULL,
  `tanggal_seminardanpelatihan` date NOT NULL,
  `lokasi_seminardanpelatihan` varchar(255) NOT NULL,
  `penyelenggara` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_seminardanpelatihan`
--

INSERT INTO `tb_seminardanpelatihan` (`id_seminardanpelatihan`, `id`, `tema_seminardanpelatihan`, `tanggal_seminardanpelatihan`, `lokasi_seminardanpelatihan`, `penyelenggara`, `created_at`, `updated_at`) VALUES
(1, 3, 'asdfasdasdasdas', '2023-12-11', 'asdasdas', 'asdasdasdas', '2023-12-11 06:31:02', '2023-12-11 06:31:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_prodi` int(11) DEFAULT NULL,
  `nrp` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `id_role`, `id_prodi`, `nrp`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '12345678', 'P3M', 'superadmin@gmail.com', '$2y$10$c703bmHUw33V5osPLr4tPOQCltnzE5jCbyMqvjGNNj35nPrVHEtZ6', '2023-12-10 09:34:06', '2023-12-10 09:34:06'),
(2, 2, 1, '11111111', 'Andri Nofiar Am', 'andrinofiaram@gmail.com', '$2y$10$dbiv3lv/7LX/WFr8yxnl/.PDUrEK82drIzTN5higtsR5fSwVINmcO', '2023-12-10 09:40:02', '2023-12-10 09:40:02'),
(3, 2, 2, '2312321312', 'Sanjaya', 'sanjaya@gmail.com', '$2y$10$4gwOFagV71NkBusjZuruWOqgqXfqj/UxbDfj8duehwbbljFV3mDaO', '2023-12-11 04:54:31', '2023-12-11 04:54:31');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `tb_biodata`
--
ALTER TABLE `tb_biodata`
  ADD PRIMARY KEY (`id_biodata`);

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `tb_hibah`
--
ALTER TABLE `tb_hibah`
  ADD PRIMARY KEY (`id_hibah`);

--
-- Indeks untuk tabel `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  ADD PRIMARY KEY (`id_mengajar`);

--
-- Indeks untuk tabel `tb_patendanhaki`
--
ALTER TABLE `tb_patendanhaki`
  ADD PRIMARY KEY (`id_patendanhaki`);

--
-- Indeks untuk tabel `tb_pendidikan`
--
ALTER TABLE `tb_pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indeks untuk tabel `tb_penelitian`
--
ALTER TABLE `tb_penelitian`
  ADD PRIMARY KEY (`id_penelitian`);

--
-- Indeks untuk tabel `tb_pengabdian`
--
ALTER TABLE `tb_pengabdian`
  ADD PRIMARY KEY (`id_pengabdian`);

--
-- Indeks untuk tabel `tb_prodi`
--
ALTER TABLE `tb_prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indeks untuk tabel `tb_publikasi`
--
ALTER TABLE `tb_publikasi`
  ADD PRIMARY KEY (`id_publikasi`);

--
-- Indeks untuk tabel `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeks untuk tabel `tb_seminardanpelatihan`
--
ALTER TABLE `tb_seminardanpelatihan`
  ADD PRIMARY KEY (`id_seminardanpelatihan`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_biodata`
--
ALTER TABLE `tb_biodata`
  MODIFY `id_biodata` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id_buku` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_hibah`
--
ALTER TABLE `tb_hibah`
  MODIFY `id_hibah` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  MODIFY `id_jabatan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  MODIFY `id_mengajar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_patendanhaki`
--
ALTER TABLE `tb_patendanhaki`
  MODIFY `id_patendanhaki` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_pendidikan`
--
ALTER TABLE `tb_pendidikan`
  MODIFY `id_pendidikan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_penelitian`
--
ALTER TABLE `tb_penelitian`
  MODIFY `id_penelitian` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_pengabdian`
--
ALTER TABLE `tb_pengabdian`
  MODIFY `id_pengabdian` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_prodi`
--
ALTER TABLE `tb_prodi`
  MODIFY `id_prodi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_publikasi`
--
ALTER TABLE `tb_publikasi`
  MODIFY `id_publikasi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_role`
--
ALTER TABLE `tb_role`
  MODIFY `id_role` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_seminardanpelatihan`
--
ALTER TABLE `tb_seminardanpelatihan`
  MODIFY `id_seminardanpelatihan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
