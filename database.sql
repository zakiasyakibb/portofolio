-- Database MySQL Portofolio Lengkap
-- Auto Generated berdasarkan perubahan data terbaru Anda

CREATE DATABASE IF NOT EXISTS `db_portofolio`;
USE `db_portofolio`;

-- 1. Tabel Profile & Teks
CREATE TABLE IF NOT EXISTS `profile` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `badge` VARCHAR(100),
  `name` VARCHAR(100),
  `title` VARCHAR(150),
  `bio` TEXT,
  `email` VARCHAR(100),
  `phone` VARCHAR(50),
  `location` VARCHAR(100),
  `avatar` TEXT,
  `years_exp` VARCHAR(20),
  `happy_clients` VARCHAR(20),
  `ontime_rate` VARCHAR(20),
  `github` VARCHAR(255),
  `linkedin` VARCHAR(255),
  `instagram` VARCHAR(255)
);

TRUNCATE TABLE `profile`;
INSERT INTO `profile` (`id`, `badge`, `name`, `title`, `bio`, `email`, `phone`, `location`, `avatar`, `years_exp`, `happy_clients`, `ontime_rate`, `github`, `linkedin`, `instagram`) VALUES
(1, 'Tersedia untuk Pekerjaan / Freelance', 'Zaki Asyakib', 'Fullstack Web Developer & UI/UX Specialist', 'Berpengalaman membangun aplikasi web modern, sistem informasi terintegrasi, dan antarmuka pengguna yang responsif dengan performa tinggi.', 'alex@domain.com', '+62 812-3456-7890', 'Lumajang, Indonesia', 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=800&q=80', '5+', '10+', '99%', 'https://github.com', 'https://linkedin.com', 'https://instagram.com');

-- 2. Tabel Keahlian (Skills) & Persentase
CREATE TABLE IF NOT EXISTS `skills` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(100),
  `level` INT,
  `icon` VARCHAR(100),
  `color` VARCHAR(50)
);

TRUNCATE TABLE `skills`;
INSERT INTO `skills` (`name`, `level`, `icon`, `color`) VALUES ('JavaScript ES6+', 90, 'fa-brands fa-js', 'text-yellow-500');
INSERT INTO `skills` (`name`, `level`, `icon`, `color`) VALUES ('PHP & MySQL', 88, 'fa-brands fa-php', 'text-indigo-500');
INSERT INTO `skills` (`name`, `level`, `icon`, `color`) VALUES ('React / Framework Frontend', 82, 'fa-brands fa-react', 'text-sky-500');
INSERT INTO `skills` (`name`, `level`, `icon`, `color`) VALUES ('REST API & Web Security', 85, 'fa-solid fa-network-wired', 'text-emerald-500');
INSERT INTO `skills` (`name`, `level`, `icon`, `color`) VALUES ('Git & Version Control', 88, 'fa-brands fa-git-alt', 'text-red-500');

-- 3. Tabel Riwayat Pengalaman
CREATE TABLE IF NOT EXISTS `experiences` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `period` VARCHAR(100),
  `role` VARCHAR(150),
  `company` VARCHAR(150),
  `description` TEXT
);

TRUNCATE TABLE `experiences`;
INSERT INTO `experiences` (`period`, `role`, `company`, `description`) VALUES ('2020 - 2022', 'Junior Frontend Developer', 'Studio Digital Indonesia', 'Mendesain antarmuka landing page responsif dengan HTML5, Tailwind CSS, dan JavaScript ES6.');
INSERT INTO `experiences` (`period`, `role`, `company`, `description`) VALUES ('2016 - 2020', 'S1 Teknik Informatika', 'Universitas Teknologi', 'Lulus dengan predikat Cum Laude. Fokus pada Rekayasa Perangkat Lunak dan Basis Data MySQL.');

-- 4. Tabel Proyek
CREATE TABLE IF NOT EXISTS `projects` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `title` VARCHAR(200),
  `category` VARCHAR(50),
  `image` TEXT,
  `tags` VARCHAR(255),
  `description` TEXT
);

TRUNCATE TABLE `projects`;
INSERT INTO `projects` (`title`, `category`, `image`, `tags`, `description`) VALUES ('Sistem Informasi Toko Online (E-Commerce)', 'PHP', 'https://images.unsplash.com/photo-1556742049-0a67e0ef726a?auto=format&fit=crop&w=800&q=80', 'PHP, MySQL, Tailwind CSS, Midtrans Payment', 'Platform e-commerce lengkap dengan fitur keranjang belanja, manajemen stok admin, laporan transaksi, dan payment gateway.');
INSERT INTO `projects` (`title`, `category`, `image`, `tags`, `description`) VALUES ('Aplikasi Manajemen Tugas & Tim', 'Web', 'https://images.unsplash.com/photo-1460925895917-afdab827c52f?auto=format&fit=crop&w=800&q=80', 'JavaScript, HTML5, CSS3, Chart.js', 'Dashboard interaktif untuk tracking produktivitas tim, penyelesaian milestone, dan visualisasi statistik tugas harian.');
INSERT INTO `projects` (`title`, `category`, `image`, `tags`, `description`) VALUES ('Desain UI/UX App Finance & E-Wallet', 'Design', 'https://images.unsplash.com/photo-1551288049-bebda4e38f71?auto=format&fit=crop&w=800&q=80', 'Figma, UI/UX, Prototyping, Design System', 'Perancangan pengalaman pengguna (UX) dan antarmuka (UI) dompet digital dengan gaya modern dan mudah digunakan.');

-- 5. Tabel Pesan Masuk
CREATE TABLE IF NOT EXISTS `messages` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `sender_name` VARCHAR(100),
  `sender_email` VARCHAR(100),
  `subject` VARCHAR(150),
  `message` TEXT,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
