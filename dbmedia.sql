-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Sep 2024 pada 12.24
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmedia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_permissions`
--

CREATE TABLE `role_permissions` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `action_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role_permissions`
--

INSERT INTO `role_permissions` (`permission_id`, `role_id`, `page_name`, `action_name`) VALUES
(199, 1, 'user', 'list'),
(200, 1, 'user', 'view'),
(201, 1, 'user', 'add'),
(202, 1, 'user', 'edit'),
(203, 1, 'user', 'editfield'),
(204, 1, 'user', 'delete'),
(205, 1, 'user', 'import_data'),
(206, 1, 'video', 'list'),
(207, 1, 'video', 'view'),
(208, 1, 'video', 'add'),
(209, 1, 'video', 'edit'),
(210, 1, 'video', 'editfield'),
(211, 1, 'video', 'delete'),
(212, 1, 'video', 'import_data'),
(213, 1, 'user', 'userregister'),
(214, 1, 'user', 'accountedit'),
(215, 1, 'user', 'accountview'),
(216, 1, 'role_permissions', 'list'),
(217, 1, 'role_permissions', 'view'),
(218, 1, 'role_permissions', 'add'),
(219, 1, 'role_permissions', 'edit'),
(220, 1, 'role_permissions', 'editfield'),
(221, 1, 'role_permissions', 'delete'),
(222, 1, 'roles', 'list'),
(223, 1, 'roles', 'view'),
(224, 1, 'roles', 'add'),
(225, 1, 'roles', 'edit'),
(226, 1, 'roles', 'editfield'),
(227, 1, 'roles', 'delete'),
(228, 1, 'url', 'list'),
(229, 1, 'url', 'view'),
(230, 1, 'url', 'add'),
(231, 1, 'url', 'edit'),
(232, 1, 'url', 'editfield'),
(233, 1, 'url', 'delete'),
(234, 2, 'video', 'list'),
(235, 2, 'video', 'add'),
(236, 2, 'user', 'userregister'),
(237, 2, 'user', 'accountedit'),
(238, 2, 'user', 'accountview'),
(239, 2, 'url', 'list');

-- --------------------------------------------------------

--
-- Struktur dari tabel `url`
--

CREATE TABLE `url` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `url`
--

INSERT INTO `url` (`id`, `url`) VALUES
(1, 'https://ttsfree.com/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2024-08-11 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `user_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `pass`, `email`, `foto`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `user_role_id`) VALUES
(1, 'Pengguna', 'pengguna', '$2y$10$brQEomDuHltfVQlvJEybq.dTEJM2bclr3a6a/ZNPLxE3B.AcxlWkq', 'lhsrisri3@gmail.com', 'http://localhost/media/uploads/files/bzaej6nvs597ymr.png', NULL, NULL, '2024-08-11 00:00:00', NULL, 2),
(2, 'Waldadi', 'admin', '$2y$10$ZKuvpUqtjb6Kuc1pRqCrTeYHwHrw/4RyT4832gx.YuhQEpFDI/A5m', 'lhsrisri@yahoo.com', 'http://localhost/media/uploads/files/508m9_fwsiod6lc.jpeg', NULL, NULL, '2024-08-11 00:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `nama_video` varchar(255) NOT NULL,
  `file_video` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id`, `tgl`, `nama_video`, `file_video`, `img`) VALUES
(14, '2024-09-10', 'Himbuan Pulang Kantor', 'http://localhost/media/uploads/files/clexb4qv972ira6.mp3', 'http://localhost/media/uploads/files/desain pegawai2.PNG'),
(15, '2024-09-10', 'Panggilan Rapat', 'http://localhost/media/uploads/files/u0_d82tokg3niel.mp4', 'http://localhost/media/uploads/files/desain pegawai2.PNG'),
(16, '2024-09-10', 'Panggilan Apel Jum&#39;at Sore', 'http://localhost/media/uploads/files/5bokht6sec78d4z.mp4', 'http://localhost/media/uploads/files/desain pegawai2.PNG'),
(17, '2024-09-10', 'Undangan Pembinaan', 'http://localhost/media/uploads/files/qw2sun780k9dogj.mp4', 'http://localhost/media/uploads/files/desain pegawai2.PNG'),
(18, '2024-09-10', 'Panggilan yang ke-2', 'http://localhost/media/uploads/files/52eu6xzrp9hkvyf.mp4', 'http://localhost/media/uploads/files/desain pegawai2.PNG'),
(19, '2024-09-10', 'Undangan Ekspos', 'http://localhost/media/uploads/files/fu2skvn7jzigx04.mp4', 'http://localhost/media/uploads/files/desain pegawai2.PNG'),
(20, '2024-09-10', 'Panggilan Apel Pagi', 'http://localhost/media/uploads/files/rtfma6iu9_epcl1.mp4', 'http://localhost/media/uploads/files/desain pegawai2.PNG'),
(21, '2024-09-10', 'Panggilan Apel Sore', 'http://localhost/media/uploads/files/3bcnmqtiu7doz_j.mp4', 'http://localhost/media/uploads/files/desain pegawai2.PNG');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indeks untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indeks untuk tabel `url`
--
ALTER TABLE `url`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT untuk tabel `url`
--
ALTER TABLE `url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
