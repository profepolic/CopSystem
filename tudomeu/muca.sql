-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Ago-2023 às 00:17
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `muca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carousels`
--

CREATE TABLE `carousels` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `titulo_lat` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `texto_lat` text COLLATE utf8_unicode_ci NOT NULL,
  `cor_botao` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `texto_botao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link_botao` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `ordem` int(11) NOT NULL,
  `situacao_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `carousels`
--

INSERT INTO `carousels` (`id`, `nome`, `imagem`, `titulo_lat`, `texto_lat`, `cor_botao`, `texto_botao`, `link_botao`, `ordem`, `situacao_id`, `created`, `modified`) VALUES
(1, 'Slide 1', 'imagem_um.jpg', 'Titulo da primeira imagem', 'Lorem ipsum dolor sit amet consectetur adipiscing elit orci lacus, tempor lectus maximus nostra vehicula senectus suspendisse feugiat ultricies metus, mus nibh sed euismod sem duis scelerisque conubia. Vestibulum convallis morbi quisque eros vivamus luctus cras condimentum, natoque tortor felis litora neque potenti ligula. Pulvinar placerat sem vivamus fringilla maecenas nulla ultrices, dolor a vulputate eleifend massa ultricies tristique turpis, venenatis neque inceptos id auctor facilisis. Mauris senectus eros ultricies et semper, nulla proin gravida vestibulum purus accumsan, fames primis quam donec. Orci ridiculus consequat tellus gravida rutrum lobortis convallis luctus, elit mollis purus arcu etiam integer vehicula. Laoreet massa varius tempor eu fusce penatibus, inceptos blandit cubilia mi.', 'success', 'Comprar', 'https://celke.com.br/curso/curso-de-php', 1, 1, '2018-09-23 00:00:00', NULL),
(2, 'Slide 2', 'imagem_dois.jpg', 'Titulo da segunda imagem', 'Conteudo da segunda imagem', 'danger', 'Reservar', 'https://celke.com.br/curso/curso-de-php-orientado-a-objetos', 2, 1, '2018-09-23 00:00:00', NULL),
(3, 'Slide 3', 'imagem_tres.jpg', 'Titulo da terceira imagem', 'Conteudo da terceira imagem', 'info', 'Visualizar', 'https://celke.com.br/curso/curso-de-php-mysqli-e-bootstrap', 3, 1, '2018-09-23 00:00:00', NULL),
(4, 'Slide 4', 'imagem_dois.jpg', 'Titulo da quarta imagem', 'Conteudo da quarta imagem', 'warning', 'Detalhes', 'https://celke.com.br/curso/curso-de-html-css-bootstrap', 4, 1, '2018-09-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `id` int(11) NOT NULL,
  `id_prod` int(11) DEFAULT NULL,
  `nick_user` varchar(255) DEFAULT NULL,
  `quantidade` int(11) NOT NULL DEFAULT 1,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `carrinho`
--

INSERT INTO `carrinho` (`id`, `id_prod`, `nick_user`, `quantidade`, `valor`) VALUES
(31, 6, 'profepolicban', 7, 100),
(32, 5, 'profepolicban', 1, 100),
(33, 4, 'profepolicban', 1, 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `link`, `status`, `data`) VALUES
(1, 'teste', 'teste', 1, '2022-09-20 02:18:43'),
(2, 'teste2', 'teste2', 1, '2022-09-20 07:20:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `id` int(255) NOT NULL,
  `enviado_por` varchar(255) CHARACTER SET utf8 NOT NULL,
  `usr_habbo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `patente` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `msg` varchar(10000) DEFAULT NULL,
  `mensagem` longtext NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp(),
  `hrsin` varchar(255) NOT NULL,
  `hrsfim` varchar(255) NOT NULL,
  `printin` varchar(255) NOT NULL,
  `printfim` varchar(255) NOT NULL,
  `status` varchar(220) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
  `nome_imagem` varchar(220) NOT NULL,
  `nome_icone` varchar(220) NOT NULL,
  `nome_titulo` varchar(220) NOT NULL,
  `nome_cor` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `img`
--

INSERT INTO `img` (`id`, `nome_imagem`, `nome_icone`, `nome_titulo`, `nome_cor`) VALUES
(1, 'https://i.imgur.com/JtnmdtH.png', 'https://i.imgur.com/JtnmdtH.png', 'Unknown', 'firebrick');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imgprod`
--

CREATE TABLE `imgprod` (
  `id` int(11) NOT NULL,
  `id_prod` int(11) DEFAULT NULL,
  `link_img` varchar(255) DEFAULT 'https://i.imgur.com/luOSj4Q.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `imgprod`
--

INSERT INTO `imgprod` (`id`, `id_prod`, `link_img`) VALUES
(1, 1, 'https://static5.depositphotos.com/1004251/485/i/950/depositphotos_4857741-stock-photo-headphone.jpg'),
(2, 1, 'https://static5.depositphotos.com/1004251/485/i/950/depositphotos_4857741-stock-photo-headphone.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `id` bigint(255) NOT NULL,
  `usr_habbo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp(),
  `msg` varchar(10000) DEFAULT NULL,
  `usr_ip` varchar(255) NOT NULL,
  `log_tipo` int(5) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `logs`
--

INSERT INTO `logs` (`id`, `usr_habbo`, `data`, `msg`, `usr_ip`, `log_tipo`) VALUES
(1, 'theGuiihBR', '2021-12-06 01:06:04', 'Fez login no sistema com o IP', '::1', 0),
(2, 'profepolicban', '2021-12-11 23:51:32', 'Fez login no sistema com o IP', '::1', 0),
(3, 'profepolicban', '2021-12-12 00:06:51', 'Fez login no sistema com o IP', '::1', 0),
(4, 'profepolicban', '2021-12-12 00:08:22', 'Fez login no sistema com o IP', '::1', 0),
(5, 'profepolicban', '2021-12-12 00:11:05', 'Promoveu o usuário z10 - teste', '::1', 1),
(6, 'profepolicban', '2021-12-12 17:59:32', 'Fez login no sistema com o IP', '::1', 0),
(7, 'profepolicban', '2021-12-14 03:35:06', 'Fez login no sistema com o IP', '::1', 0),
(8, 'profepolicban', '2021-12-15 19:38:37', 'Fez login no sistema com o IP', '::1', 0),
(9, 'profepolicban', '2021-12-16 01:00:46', 'Fez login no sistema com o IP', '::1', 0),
(10, 'profepolicban', '2021-12-16 17:02:23', 'Fez login no sistema com o IP', '::1', 0),
(11, 'profepolicban', '2021-12-18 03:43:07', 'Fez login no sistema com o IP', '::1', 0),
(12, 'profepolicban', '2021-12-20 05:18:10', 'Fez login no sistema com o IP', '::1', 0),
(13, 'profepolicban', '2021-12-20 16:59:57', 'Fez login no sistema com o IP', '::1', 0),
(14, 'profepolicban', '2021-12-20 17:23:28', 'Fez login no sistema com o IP', '::1', 0),
(15, 'profepolicban', '2021-12-20 17:25:40', 'Fez login no sistema com o IP', '::1', 0),
(16, 'profepolicban', '2021-12-20 17:25:48', 'Fez login no sistema com o IP', '::1', 0),
(17, 'profepolicban', '2021-12-20 17:26:42', 'Fez login no sistema com o IP', '::1', 0),
(18, 'profepolicban', '2021-12-20 19:50:48', 'Fez login no sistema com o IP', '::1', 0),
(19, 'profepolicban', '2021-12-21 10:47:41', 'Fez login no sistema com o IP', '::1', 0),
(20, 'profepolicban', '2021-12-21 20:25:24', 'Fez login no sistema com o IP', '::1', 0),
(21, 'profepolicban', '2021-12-21 20:33:20', 'Fez login no sistema com o IP', '::1', 0),
(22, 'profepolicban', '2021-12-21 22:22:30', 'Fez login no sistema com o IP', '::1', 0),
(23, 'profepolicban', '2021-12-22 00:00:11', 'Fez login no sistema com o IP', '::1', 0),
(24, 'profepolicban', '2021-12-22 00:04:55', 'Fez login no sistema com o IP', '::1', 0),
(25, 'profepolicban', '2021-12-22 00:05:23', 'Fez login no sistema com o IP', '::1', 0),
(26, 'profepolicban', '2021-12-22 00:10:52', 'Fez login no sistema com o IP', '::1', 0),
(27, 'profepolicban', '2021-12-22 00:13:49', 'Fez login no sistema com o IP', '::1', 0),
(28, 'profepolicban', '2021-12-22 00:20:53', 'Fez login no sistema com o IP', '::1', 0),
(29, 'profepolicban', '2021-12-22 00:21:09', 'Fez login no sistema com o IP', '::1', 0),
(30, 'profepolicban', '2021-12-29 13:14:57', 'Fez login no sistema com o IP', '::1', 0),
(31, 'profepolicban', '2021-12-31 03:04:29', 'Fez login no sistema com o IP', '::1', 0),
(32, 'profepolicban', '2021-12-31 03:06:09', 'Promoveu o usuário z10 - teste', '::1', 1),
(33, 'profepolicban', '2022-01-02 05:11:29', 'Fez login no sistema com o IP', '::1', 0),
(34, 'profepolicban', '2022-01-04 04:45:56', 'Fez login no sistema com o IP', '::1', 0),
(35, 'profepolicban', '2022-01-05 02:28:50', 'Fez login no sistema com o IP', '::1', 0),
(36, 'profepolicban', '2022-01-06 04:35:05', 'Fez login no sistema com o IP', '::1', 0),
(37, 'profepolicban', '2022-01-12 04:39:48', 'Fez login no sistema com o IP', '::1', 0),
(38, 'profepolicban', '2022-01-12 07:43:41', 'Fez login no sistema com o IP', '::1', 0),
(39, 'profepolicban', '2022-01-21 21:18:06', 'Fez login no sistema com o IP', '::1', 0),
(40, 'profepolicban', '2022-01-23 23:19:40', 'Fez login no sistema com o IP', '::1', 0),
(41, 'profepolicban', '2022-01-23 23:41:24', 'Fez login no sistema com o IP', '::1', 0),
(42, 'profepolicban', '2022-01-24 00:50:07', 'Fez login no sistema com o IP', '::1', 0),
(43, 'z10', '2022-01-24 00:52:08', 'Fez login no sistema com o IP', '::1', 0),
(44, 'profepolicban', '2022-01-24 00:58:01', 'Fez login no sistema com o IP', '::1', 0),
(45, 'profepolicban', '2022-02-13 07:08:02', 'Fez login no sistema com o IP', '::1', 0),
(46, 'profepolicban', '2022-02-16 09:32:25', 'Fez login no sistema com o IP', '::1', 0),
(47, 'profepolicban', '2022-02-16 09:34:15', 'Fez login no sistema com o IP', '::1', 0),
(48, 'profepolicban', '2022-02-16 09:52:05', 'Fez login no sistema com o IP', '::1', 0),
(49, 'profepolicban', '2022-02-18 00:39:58', 'Fez login no sistema com o IP', '::1', 0),
(50, 'profepolicban', '2022-02-19 11:04:00', 'Fez login no sistema com o IP', '::1', 0),
(51, 'profepolicban', '2022-02-19 19:56:17', 'Fez login no sistema com o IP', '::1', 0),
(52, 'profepolicban', '2022-02-19 20:46:29', 'Fez login no sistema com o IP', '::1', 0),
(53, 'profepolicban', '2022-02-19 20:47:08', 'Fez login no sistema com o IP', '::1', 0),
(54, 'profepolicban', '2022-02-19 20:48:13', 'Fez login no sistema com o IP', '::1', 0),
(55, 'profepolicban', '2022-02-19 20:49:04', 'Fez login no sistema com o IP', '::1', 0),
(56, 'profepolicban', '2022-02-19 20:49:26', 'Fez login no sistema com o IP', '::1', 0),
(57, 'profepolicban', '2022-02-19 20:49:46', 'Fez login no sistema com o IP', '::1', 0),
(58, 'profepolicban', '2022-02-19 20:50:03', 'Fez login no sistema com o IP', '::1', 0),
(59, 'profepolicban', '2022-02-19 20:50:22', 'Fez login no sistema com o IP', '::1', 0),
(60, 'profepolicban', '2022-02-19 21:27:13', 'Fez login no sistema com o IP', '::1', 0),
(61, 'profepolicban', '2022-02-19 21:51:38', 'Promoveu o usuário z10 - teste', '::1', 1),
(62, 'profepolicban', '2022-02-19 21:55:27', 'Tentou se auto-promover.', '::1', 2),
(63, 'profepolicban', '2022-02-19 21:55:34', 'Tentou se auto-promover.', '::1', 2),
(64, 'profepolicban', '2022-02-19 21:59:49', 'Promoveu o usuário z10 - 111', '::1', 1),
(65, 'profepolicban', '2022-02-19 22:00:03', 'Promoveu o usuário z10 - 111', '::1', 1),
(66, 'profepolicban', '2022-02-20 11:16:05', 'Fez login no sistema com o IP', '::1', 0),
(67, 'profepolicban', '2022-02-20 20:01:54', 'Fez login no sistema com o IP', '::1', 0),
(68, 'profepolicban', '2022-02-21 15:23:41', 'Fez login no sistema com o IP', '::1', 0),
(69, 'z10', '2022-02-21 19:16:48', 'Fez login no sistema com o IP', '::1', 0),
(70, 'profepolicban', '2022-02-21 19:29:47', 'Fez login no sistema com o IP', '::1', 0),
(71, 'z10', '2022-02-21 19:31:01', 'Fez login no sistema com o IP', '::1', 0),
(72, 'profepolicban', '2022-02-21 19:31:52', 'Fez login no sistema com o IP', '::1', 0),
(73, 'profepolicban', '2022-02-21 19:32:12', 'Advertiu o usuário z10 - teste', '::1', 1),
(74, 'z10', '2022-02-21 19:33:23', 'Fez login no sistema com o IP', '::1', 0),
(75, 'profepolicban', '2022-02-21 20:03:01', 'Fez login no sistema com o IP', '::1', 0),
(76, 'profepolicban', '2022-02-21 20:08:49', 'Advertiu o usuário profepolic22 - aa', '::1', 1),
(77, 'profepolicban', '2022-02-21 20:09:02', 'Advertiu o usuário profepolic22 - aa', '::1', 1),
(78, 'profepolicban', '2022-02-21 20:10:34', 'Promoveu o usuário z10 - 123\r\n', '::1', 1),
(79, 'profepolicban', '2022-02-21 20:11:09', 'Fez login no sistema com o IP', '::1', 0),
(80, 'profepolicban', '2022-02-21 20:24:38', 'Fez login no sistema com o IP', '::1', 0),
(81, 'profepolicban', '2022-02-22 07:36:32', 'Fez login no sistema com o IP', '::1', 0),
(82, 'z10', '2022-02-22 07:50:06', 'Fez login no sistema com o IP', '::1', 0),
(83, 'profepolicban', '2022-02-22 08:16:31', 'Fez login no sistema com o IP', '::1', 0),
(84, 'profepolicban', '2022-02-22 17:43:16', 'Fez login no sistema com o IP', '192.168.15.5', 0),
(85, 'profepolicban', '2022-02-22 18:21:06', 'Fez login no sistema com o IP', '192.168.15.5', 0),
(86, 'profepolicban', '2022-02-22 21:36:58', 'Fez login no sistema com o IP', '::1', 0),
(87, 'profepolicban', '2022-02-22 22:39:10', 'Fez login no sistema com o IP', '::1', 0),
(88, 'profepolicban', '2022-02-22 22:45:14', 'Fez login no sistema com o IP', '::1', 0),
(89, 'profepolicban', '2022-02-22 22:48:12', 'Fez login no sistema com o IP', '::1', 0),
(90, 'z10', '2022-02-22 23:59:22', 'Fez login no sistema com o IP', '::1', 0),
(91, 'profepolicban', '2022-02-23 00:00:39', 'Fez login no sistema com o IP', '::1', 0),
(92, 'z10', '2022-02-23 00:09:42', 'Fez login no sistema com o IP', '::1', 0),
(93, 'profepolicban', '2022-02-23 00:12:24', 'Fez login no sistema com o IP', '::1', 0),
(94, 'profepolicban', '2022-02-23 11:06:41', 'Fez login no sistema com o IP', '::1', 0),
(95, 'profepolicban', '2022-02-23 11:36:57', 'Promoveu o usuário z10 - a', '::1', 1),
(96, 'profepolicban', '2022-02-23 11:37:10', 'Promoveu o usuário z10 - asa', '::1', 1),
(97, 'profepolicban', '2022-02-23 11:39:01', 'Promoveu o usuário z10 - ss', '::1', 1),
(98, 'profepolicban', '2022-02-23 11:59:41', 'Contratou o funcionário profepolic22', '::1', 1),
(99, 'profepolicban', '2022-02-23 11:59:57', 'Contratou o funcionário profepolic22', '::1', 1),
(100, 'profepolicban', '2022-02-23 12:01:31', 'Contratou o funcionário profepolic22', '::1', 1),
(101, 'profepolicban', '2022-02-23 12:01:43', 'Contratou o funcionário josefin', '::1', 1),
(102, 'profepolicban', '2022-02-23 12:02:33', 'Contratou o funcionário profepolicban', '::1', 1),
(103, 'profepolicban', '2022-02-23 12:03:26', 'Contratou o funcionário profepolic22', '::1', 1),
(104, 'profepolicban', '2022-02-23 12:35:15', 'Advertiu o usuário z10 - a', '::1', 1),
(105, 'profepolicban', '2022-02-23 12:35:25', 'Rebaixou o usuário z10 - a', '::1', 1),
(106, 'profepolicban', '2022-02-23 12:35:32', 'Demitiu o usuário z10 - a', '::1', 1),
(107, 'profepolicban', '2022-02-23 12:35:41', 'Contratou o funcionário z10', '::1', 1),
(108, 'profepolicban', '2022-02-23 12:51:32', 'Tentou promover o usuário z10 mas não possui permissões.', '::1', 2),
(109, 'profepolicban', '2022-02-23 12:51:40', 'Tentou promover o usuário z10 mas não possui permissões.', '::1', 2),
(110, 'profepolicban', '2022-02-23 12:51:53', 'Advertiu o usuário z10 - teste', '::1', 1),
(111, 'profepolicban', '2022-02-25 01:43:23', 'Fez login no sistema com o IP', '::1', 0),
(112, 'profepolicban', '2022-02-25 11:53:08', 'Fez login no sistema com o IP', '::1', 0),
(113, 'profepolicban', '2022-02-25 12:44:05', 'Tentou promover o usuário z10 mas não possui permissões.', '::1', 2),
(114, 'profepolicban', '2022-02-25 12:44:43', 'Advertiu o usuário z10 - teste', '::1', 1),
(115, 'profepolicban', '2022-02-25 12:46:34', 'Advertiu o usuário z10 - adv', '::1', 1),
(116, 'profepolicban', '2022-02-25 14:38:54', 'Tentou promover o usuário z10 mas não possui permissões.', '::1', 2),
(117, 'profepolicban', '2022-02-25 18:52:46', 'Advertiu o usuário z10 - aaaaaa', '::1', 1),
(118, 'profepolicban', '2022-02-25 18:53:01', 'Rebaixou o usuário z10 - a', '::1', 1),
(119, 'profepolicban', '2022-02-26 01:29:09', 'Fez login no sistema com o IP', '::1', 0),
(120, 'profepolicban', '2022-02-26 11:40:02', 'Fez login no sistema com o IP', '::1', 0),
(121, 'profepolicban', '2022-02-26 19:04:52', 'Fez login no sistema com o IP', '::1', 0),
(122, 'profepolicban', '2022-02-26 19:10:53', 'Advertiu o usuário z10 - teste', '::1', 1),
(123, 'profepolicban', '2022-02-26 19:20:16', 'Advertiu o usuário z10 - teste', '::1', 1),
(124, 'profepolicban', '2022-02-26 19:20:20', 'Advertiu o usuário z10 - teste', '::1', 1),
(125, 'profepolicban', '2022-02-26 19:20:22', 'Advertiu o usuário z10 - teste', '::1', 1),
(126, 'profepolicban', '2022-02-26 19:20:26', 'Advertiu o usuário z10 - teste', '::1', 1),
(127, 'profepolicban', '2022-02-26 19:20:29', 'Advertiu o usuário z10 - teste', '::1', 1),
(128, 'profepolicban', '2022-02-26 19:50:01', 'Rebaixou o usuário z10 - teste', '::1', 1),
(129, 'profepolicban', '2022-02-26 19:51:03', 'Rebaixou o usuário z10 - tw', '::1', 1),
(130, 'profepolicban', '2022-02-26 21:01:52', 'Promoveu o usuário morgana - ss', '::1', 1),
(131, 'profepolicban', '2022-02-27 02:49:08', 'Fez login no sistema com o IP', '::1', 0),
(132, 'profepolicban', '2022-02-27 11:53:54', 'Fez login no sistema com o IP', '::1', 0),
(133, 'profepolicban', '2022-02-27 12:33:28', 'Advertiu o usuário z10 - aa', '::1', 1),
(134, 'profepolicban', '2022-02-27 12:36:14', 'Advertiu o usuário z10 - aa', '::1', 1),
(135, 'profepolicban', '2022-02-27 14:58:00', 'Advertiu o usuário z10 - Teste', '::1', 1),
(136, 'profepolicban', '2022-02-27 15:05:58', 'Tentou promover o usuário z10 mas não possui permissões.', '::1', 2),
(137, 'profepolicban', '2022-02-27 15:06:33', 'Promoveu o usuário z10 - teste', '::1', 1),
(138, 'profepolicban', '2022-02-27 15:14:42', 'Promoveu o usuário z10 - teste', '::1', 1),
(139, 'profepolicban', '2022-02-27 15:15:37', 'Promoveu o usuário z10 - teste', '::1', 1),
(140, 'profepolicban', '2022-02-27 15:15:55', 'Advertiu o usuário z10 - teste', '::1', 1),
(141, 'profepolicban', '2022-02-27 15:16:01', 'Tentou rebaixar o usuário  mas não possui permissões.', '::1', 2),
(142, 'profepolicban', '2022-02-27 15:16:34', 'Rebaixou o usuário z10 - teste', '::1', 1),
(143, 'profepolicban', '2022-02-27 15:19:54', 'Rebaixou o usuário z10 - teste', '::1', 1),
(144, 'profepolicban', '2022-02-27 15:20:31', 'Rebaixou o usuário z10 - teste', '::1', 1),
(145, 'profepolicban', '2022-02-27 15:20:55', 'Promoveu o usuário z10 - teste', '::1', 1),
(146, 'profepolicban', '2022-02-27 15:27:36', 'Promoveu o usuário z10 - teste', '::1', 1),
(147, 'profepolicban', '2022-02-27 15:28:36', 'Promoveu o usuário z10 - teste', '::1', 1),
(148, 'profepolicban', '2022-02-27 15:35:42', 'Advertiu o usuário z10 - teste', '::1', 1),
(149, 'profepolicban', '2022-02-27 15:35:56', 'Rebaixou o usuário z10 - teste', '::1', 1),
(150, 'profepolicban', '2022-02-27 15:38:46', 'Rebaixou o usuário z10 - teste', '::1', 1),
(151, 'profepolicban', '2022-02-27 15:39:05', 'Rebaixou o usuário z10 - teste', '::1', 1),
(152, 'profepolicban', '2022-02-27 15:44:43', 'Demitiu o usuário z10 - teste', '::1', 1),
(153, 'profepolicban', '2022-02-27 16:56:36', 'Contratou o funcionário z10', '::1', 1),
(154, 'profepolicban', '2022-02-27 16:57:15', 'Promoveu o usuário z10 - teste', '::1', 1),
(155, 'profepolicban', '2022-02-27 16:57:26', 'Advertiu o usuário z10 - teste', '::1', 1),
(156, 'profepolicban', '2022-02-27 16:57:44', 'Rebaixou o usuário z10 - teste', '::1', 1),
(157, 'profepolicban', '2022-02-27 16:58:01', 'Demitiu o usuário z10 - teste', '::1', 1),
(158, 'profepolicban', '2022-02-27 17:59:24', 'Fez login no sistema com o IP', '192.168.15.9', 0),
(159, 'profepolicban', '2022-02-27 18:11:16', 'Fez login no sistema com o IP', '192.168.15.9', 0),
(160, 'profepolicban', '2022-02-27 18:12:56', 'Fez login no sistema com o IP', '192.168.15.9', 0),
(161, 'profepolicban', '2022-02-27 18:34:41', 'Fez login no sistema com o IP', '192.168.15.9', 0),
(162, 'profepolicban', '2022-02-27 18:49:36', 'Fez login no sistema com o IP', '192.168.15.9', 0),
(163, 'profepolicban', '2022-02-27 19:01:24', 'Fez login no sistema com o IP', '192.168.15.9', 0),
(164, 'profepolicban', '2022-02-27 19:04:52', 'Fez login no sistema com o IP', '192.168.15.9', 0),
(165, 'profepolicban', '2022-02-27 19:26:19', 'Fez login no sistema com o IP', '192.168.15.9', 0),
(166, 'profepolicban', '2022-02-27 19:26:32', 'Fez login no sistema com o IP', '192.168.15.9', 0),
(167, 'profepolicban', '2022-02-27 19:35:04', 'Fez login no sistema com o IP', '192.168.15.9', 0),
(168, 'profepolicban', '2022-02-27 19:35:38', 'Fez login no sistema com o IP', '192.168.15.9', 0),
(169, 'profepolicban', '2022-02-28 00:05:41', 'Fez login no sistema com o IP', '::1', 0),
(170, 'profepolicban', '2022-02-28 00:18:46', 'Fez login no sistema com o IP', '192.168.15.9', 0),
(171, 'profepolicban', '2022-02-28 12:45:04', 'Fez login no sistema com o IP', '::1', 0),
(172, 'profepolicban', '2022-02-28 16:44:57', 'Fez login no sistema com o IP', '::1', 0),
(173, 'profepolicban', '2022-02-28 19:49:37', 'Fez login no sistema com o IP', '192.168.15.9', 0),
(174, 'profepolicban', '2022-02-28 19:51:52', 'Fez login no sistema com o IP', '192.168.15.9', 0),
(175, 'profepolicban', '2022-02-28 20:10:11', 'Fez login no sistema com o IP', '192.168.15.9', 0),
(176, 'profepolicban', '2022-02-28 22:53:47', 'Contratou o funcionário z10', '::1', 1),
(177, 'profepolicban', '2022-02-28 22:55:38', 'Advertiu o usuário z10 - teste', '::1', 1),
(178, 'profepolicban', '2022-02-28 22:56:05', 'Rebaixou o usuário z10 - teste', '::1', 1),
(179, 'profepolicban', '2022-02-28 22:56:54', 'Demitiu o usuário z10 - teste', '::1', 1),
(180, 'profepolicban', '2022-02-28 23:05:27', 'Promoveu o usuário z10 - teste', '::1', 1),
(181, 'profepolicban', '2022-02-28 23:05:51', 'Contratou o funcionário z10', '::1', 1),
(182, 'profepolicban', '2022-03-01 14:15:06', 'Fez login no sistema com o IP', '::1', 0),
(183, 'profepolicban', '2022-03-01 15:30:41', 'Promoveu o usuário z10 - teste', '::1', 1),
(184, 'profepolicban', '2022-03-01 15:33:12', 'Promoveu o usuário z10 - teste', '::1', 1),
(185, 'profepolicban', '2022-03-01 15:34:13', 'Promoveu o usuário z10 - teste', '::1', 1),
(186, 'profepolicban', '2022-03-01 15:35:05', 'Promoveu o usuário z10 - teste', '::1', 1),
(187, 'profepolicban', '2022-03-01 15:35:48', 'Promoveu o usuário z10 - teste', '::1', 1),
(188, 'profepolicban', '2022-03-01 15:37:03', 'Promoveu o usuário z10 - teste', '::1', 1),
(189, 'profepolicban', '2022-03-01 15:39:27', 'Promoveu o usuário z10 - teste', '::1', 1),
(190, 'profepolicban', '2022-03-01 17:07:47', 'Promoveu o usuário z10 - teste', '::1', 1),
(191, 'profepolicban', '2022-03-01 17:09:58', 'Promoveu o usuário z10 - teste', '::1', 1),
(192, 'profepolicban', '2022-03-01 17:12:07', 'Promoveu o usuário z10 - teste', '::1', 1),
(193, 'profepolicban', '2022-03-01 18:05:24', 'Promoveu o usuário z10 - teste', '::1', 1),
(194, 'profepolicban', '2022-03-01 18:05:53', 'Promoveu o usuário z10 - teste', '::1', 1),
(195, 'profepolicban', '2022-03-01 18:11:58', 'Promoveu o usuário z10 - teste', '::1', 1),
(196, 'profepolicban', '2022-03-01 18:12:57', 'Tentou se auto-promover.', '::1', 2),
(197, 'profepolicban', '2022-03-03 01:08:29', 'Fez login no sistema com o IP', '::1', 0),
(198, 'profepolicban', '2022-03-04 00:33:49', 'Fez login no sistema com o IP', '::1', 0),
(199, 'z10', '2022-03-04 02:52:02', 'Fez login no sistema com o IP', '::1', 0),
(200, 'profepolicban', '2022-03-04 03:01:20', 'Fez login no sistema com o IP', '::1', 0),
(201, 'profepolicban', '2022-03-04 16:02:53', 'Fez login no sistema com o IP', '::1', 0),
(202, 'profepolicban', '2022-03-04 16:10:03', 'Fez login no sistema com o IP', '::1', 0),
(203, 'profepolicban', '2022-03-04 20:57:31', 'Fez login no sistema com o IP', '::1', 0),
(204, 'profepolicban', '2022-03-05 01:33:23', 'Demitiu o usuário z10 - a', '::1', 1),
(205, 'z10', '2022-03-05 05:06:37', 'Fez login no sistema com o IP', '::1', 0),
(206, 'z10', '2022-03-05 05:09:55', 'Fez login no sistema com o IP', '::1', 0),
(207, 'z10', '2022-03-05 05:17:48', 'Fez login no sistema com o IP', '::1', 0),
(208, 'profepolicban', '2022-03-05 05:21:41', 'Fez login no sistema com o IP', '::1', 0),
(209, 'profepolicban', '2022-03-05 05:37:28', 'Fez login no sistema com o IP', '::1', 0),
(210, 'profepolicban', '2022-03-05 14:02:25', 'Fez login no sistema com o IP', '::1', 0),
(211, 'z10', '2022-03-05 14:36:16', 'Fez login no sistema com o IP', '::1', 0),
(212, 'z10', '2022-03-05 14:58:17', 'Fez login no sistema com o IP', '::1', 0),
(213, 'theGuiihBR', '2022-03-05 15:03:08', 'Fez login no sistema com o IP', '::1', 0),
(214, 'z10', '2022-03-05 15:14:14', 'Fez login no sistema com o IP', '::1', 0),
(215, 'z10', '2022-03-05 15:31:19', 'Fez login no sistema com o IP', '::1', 0),
(216, 'z10', '2022-03-05 15:40:55', 'Fez login no sistema com o IP', '::1', 0),
(217, 'z10', '2022-03-05 15:52:50', 'Fez login no sistema com o IP', '::1', 0),
(218, 'z10', '2022-03-05 15:57:40', 'Fez login no sistema com o IP', '::1', 0),
(219, 'z10', '2022-03-05 16:04:24', 'Fez login no sistema com o IP', '::1', 0),
(220, 'z10', '2022-03-05 16:17:17', 'Fez login no sistema com o IP', '::1', 0),
(221, 'z10', '2022-03-05 16:47:19', 'Fez login no sistema com o IP', '::1', 0),
(222, 'z10', '2022-03-05 16:52:33', 'Fez login no sistema com o IP', '::1', 0),
(223, 'profepolicban', '2022-03-05 17:29:25', 'Fez login no sistema com o IP', '::1', 0),
(224, 'z10', '2022-03-05 17:30:04', 'Fez login no sistema com o IP', '::1', 0),
(225, 'z10', '2022-03-05 17:32:39', 'Fez login no sistema com o IP', '::1', 0),
(226, 'z10', '2022-03-05 17:36:36', 'Fez login no sistema com o IP', '::1', 0),
(227, 'z10', '2022-03-05 17:37:10', 'Fez login no sistema com o IP', '::1', 0),
(228, 'z10', '2022-03-05 17:51:10', 'Fez login no sistema com o IP', '::1', 0),
(229, 'profepolicban', '2022-03-06 13:22:34', 'Fez login no sistema com o IP', '::1', 0),
(230, 'profepolicban', '2022-03-07 14:58:27', 'Fez login no sistema com o IP', '::1', 0),
(231, 'profepolicban', '2022-03-07 19:43:39', 'Fez login no sistema com o IP', '::1', 0),
(232, 'z10', '2022-03-07 20:13:49', 'Fez login no sistema com o IP', '::1', 0),
(233, 'z10', '2022-03-07 20:20:10', 'Fez login no sistema com o IP', '::1', 0),
(234, 'z10', '2022-03-07 20:24:18', 'Fez login no sistema com o IP', '::1', 0),
(235, 'z10', '2022-03-07 20:30:03', 'Fez login no sistema com o IP', '::1', 0),
(236, 'z10', '2022-03-07 20:34:16', 'Fez login no sistema com o IP', '::1', 0),
(237, 'z10', '2022-03-07 20:44:21', 'Fez login no sistema com o IP', '::1', 0),
(238, 'z10', '2022-03-07 20:45:05', 'Fez login no sistema com o IP', '::1', 0),
(239, 'z10', '2022-03-07 20:46:03', 'Fez login no sistema com o IP', '::1', 0),
(240, 'z10', '2022-03-07 20:46:49', 'Fez login no sistema com o IP', '::1', 0),
(241, 'z10', '2022-03-07 20:52:56', 'Fez login no sistema com o IP', '::1', 0),
(242, 'theGuiihBR', '2022-03-07 20:53:59', 'Fez login no sistema com o IP', '::1', 0),
(243, 'z10', '2022-03-07 20:57:03', 'Fez login no sistema com o IP', '::1', 0),
(244, 'profepolicban', '2022-03-08 13:30:12', 'Fez login no sistema com o IP', '::1', 0),
(245, 'profepolicban', '2022-03-08 17:39:13', 'Fez login no sistema com o IP', '::1', 0),
(246, 'profepolicban', '2022-03-09 14:43:02', 'Fez login no sistema com o IP', '::1', 0),
(247, 'profepolicban', '2022-03-10 00:17:57', 'Fez login no sistema com o IP', '::1', 0),
(248, 'profepolicban', '2022-03-10 07:32:41', 'Fez login no sistema com o IP', '::1', 0),
(249, 'profepolicban', '2022-03-10 14:22:55', 'Fez login no sistema com o IP', '::1', 0),
(250, 'profepolicban', '2022-03-10 17:46:35', 'Fez login no sistema com o IP', '::1', 0),
(251, 'profepolicban', '2022-03-11 00:38:42', 'Fez login no sistema com o IP', '::1', 0),
(252, 'profepolicban', '2022-03-11 04:25:49', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(253, 'profepolicban', '2022-03-11 04:26:08', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(254, 'profepolicban', '2022-03-11 04:26:12', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(255, 'profepolicban', '2022-03-11 04:42:54', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(256, 'profepolicban', '2022-03-11 16:03:03', 'Fez login no sistema com o IP', '::1', 0),
(257, 'profepolicban', '2022-03-12 02:12:34', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(258, 'profepolicban', '2022-03-12 02:13:07', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(259, 'profepolicban', '2022-03-12 03:06:55', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(260, 'profepolicban', '2022-03-12 14:09:44', 'Fez login no sistema com o IP', '::1', 0),
(261, 'profepolicban', '2022-03-12 18:16:35', 'Fez login no sistema com o IP', '::1', 0),
(262, 'profepolicban', '2022-03-13 02:35:15', 'Fez login no sistema com o IP', '::1', 0),
(263, 'profepolicban', '2022-03-13 12:25:28', 'Fez login no sistema com o IP', '::1', 0),
(264, 'profepolicban', '2022-03-13 17:41:01', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(265, 'profepolicban', '2022-03-13 17:41:07', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(266, 'profepolicban', '2022-03-13 17:41:24', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(267, 'profepolicban', '2022-03-14 03:36:11', 'Fez login no sistema com o IP', '::1', 0),
(268, 'profepolicban', '2022-03-14 14:38:29', 'Fez login no sistema com o IP', '::1', 0),
(269, 'profepolicban', '2022-03-15 03:26:03', 'Fez login no sistema com o IP', '::1', 0),
(270, 'profepolicban', '2022-03-15 18:17:59', 'Fez login no sistema com o IP', '::1', 0),
(271, 'profepolicban', '2022-03-16 06:48:39', 'Fez login no sistema com o IP', '::1', 0),
(272, 'profepolicban', '2022-03-16 16:48:15', 'Fez login no sistema com o IP', '::1', 0),
(273, 'profepolicban', '2022-03-17 03:39:37', 'Fez login no sistema com o IP', '::1', 0),
(274, 'profepolicban', '2022-03-17 04:57:12', 'Fez login no sistema com o IP', '::1', 0),
(275, 'profepolicban', '2022-03-17 05:05:43', 'Fez login no sistema com o IP', '::1', 0),
(276, 'profepolicban', '2022-03-17 17:35:49', 'Fez login no sistema com o IP', '::1', 0),
(277, 'profepolicban', '2022-03-18 03:35:01', 'Promoveu o usuário z10 - 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 ', '::1', 1),
(278, 'profepolicban', '2022-03-18 03:35:21', 'Promoveu o usuário z10 - 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 10000 100', '::1', 1),
(279, 'profepolicban', '2022-03-18 20:44:41', 'Fez login no sistema com o IP', '::1', 0),
(280, 'profepolicban', '2022-03-19 04:00:06', 'Fez login no sistema com o IP', '::1', 0),
(281, 'profepolicban', '2022-03-19 04:17:00', 'Promoveu o usuário z10 - teste', '::1', 1),
(282, 'profepolicban', '2022-03-19 05:33:57', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(283, 'profepolicban', '2022-03-19 05:34:06', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(284, 'profepolicban', '2022-03-19 05:34:43', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(285, 'profepolicban', '2022-03-19 05:34:47', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(286, 'profepolicban', '2022-03-19 05:35:04', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(287, 'profepolicban', '2022-03-19 05:38:01', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(288, 'profepolicban', '2022-03-19 17:52:20', 'Fez login no sistema com o IP', '::1', 0),
(289, 'profepolicban', '2022-03-20 08:40:17', 'Fez login no sistema com o IP', '::1', 0),
(290, 'profepolicban', '2022-03-20 15:02:30', 'Fez login no sistema com o IP', '::1', 0),
(291, 'profepolicban', '2022-03-21 01:47:47', 'Fez login no sistema com o IP', '::1', 0),
(292, 'profepolicban', '2022-03-21 14:32:21', 'Fez login no sistema com o IP', '::1', 0),
(293, 'profepolicban', '2022-03-22 02:49:38', 'Fez login no sistema com o IP', '::1', 0),
(294, 'profepolicban', '2022-03-22 14:42:09', 'Fez login no sistema com o IP', '::1', 0),
(295, 'profepolicban', '2022-03-24 05:01:42', 'Fez login no sistema com o IP', '::1', 0),
(296, 'profepolicban', '2022-03-24 15:19:59', 'Fez login no sistema com o IP', '::1', 0),
(297, 'profepolicban', '2022-03-24 19:12:56', 'Fez login no sistema com o IP', '::1', 0),
(298, 'profepolicban', '2022-03-25 02:35:05', 'Fez login no sistema com o IP', '::1', 0),
(299, 'profepolicban', '2022-03-25 05:55:39', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(300, 'profepolicban', '2022-03-25 05:55:50', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(301, 'profepolicban', '2022-03-25 06:10:59', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(302, 'profepolicban', '2022-03-25 06:11:20', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(303, 'profepolicban', '2022-03-25 06:11:48', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(304, 'profepolicban', '2022-03-25 06:12:59', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(305, 'profepolicban', '2022-03-25 06:14:37', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(306, 'profepolicban', '2022-03-25 16:34:42', 'Fez login no sistema com o IP', '::1', 0),
(307, 'profepolicban', '2022-03-26 02:41:27', 'Fez login no sistema com o IP', '::1', 0),
(308, 'profepolicban', '2022-03-26 04:29:45', 'Fez login no sistema com o IP', '::1', 0),
(309, 'profepolicban', '2022-03-27 03:38:27', 'Fez login no sistema com o IP', '::1', 0),
(310, 'profepolicban', '2022-03-27 17:18:52', 'Fez login no sistema com o IP', '::1', 0),
(311, 'profepolicban', '2022-03-28 03:39:09', 'Fez login no sistema com o IP', '::1', 0),
(312, 'profepolicban', '2022-03-28 14:40:46', 'Fez login no sistema com o IP', '::1', 0),
(313, 'profepolicban', '2022-03-28 18:49:34', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(314, 'profepolicban', '2022-03-29 01:21:33', 'Fez login no sistema com o IP', '::1', 0),
(315, 'profepolicban', '2022-03-29 17:43:50', 'Fez login no sistema com o IP', '::1', 0),
(316, 'profepolicban', '2022-04-01 03:06:09', 'Fez login no sistema com o IP', '::1', 0),
(317, 'profepolicban', '2022-04-01 16:22:34', 'Fez login no sistema com o IP', '::1', 0),
(318, 'profepolicban', '2022-04-02 03:33:08', 'Fez login no sistema com o IP', '::1', 0),
(319, 'profepolicban', '2022-04-02 04:51:18', 'Fez login no sistema com o IP', '::1', 0),
(320, 'profepolicban', '2022-04-02 16:22:04', 'Fez login no sistema com o IP', '::1', 0),
(321, 'profepolicban', '2022-04-03 00:55:30', 'Fez login no sistema com o IP', '::1', 0),
(322, 'profepolicban', '2022-04-03 13:52:25', 'Fez login no sistema com o IP', '::1', 0),
(323, 'profepolicban', '2022-04-03 18:46:27', 'Fez login no sistema com o IP', '::1', 0),
(324, 'profepolicban', '2022-04-04 00:20:05', 'Fez login no sistema com o IP', '::1', 0),
(325, 'profepolicban', '2022-04-04 03:41:05', 'Fez login no sistema com o IP', '::1', 0),
(326, 'profepolicban', '2022-04-04 15:43:38', 'Fez login no sistema com o IP', '::1', 0),
(327, '', '2022-04-04 22:20:11', 'Fez login no sistema com o IP', '::1', 0),
(328, '', '2022-04-04 22:20:20', 'Fez login no sistema com o IP', '::1', 0),
(329, 'profepolicban', '2022-04-04 22:20:27', 'Fez login no sistema com o IP', '::1', 0),
(330, 'profepolicban', '2022-04-05 03:43:07', 'Fez login no sistema com o IP', '::1', 0),
(331, 'profepolicban', '2022-04-05 05:29:31', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(332, 'profepolicban', '2022-04-05 05:29:34', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(333, 'profepolicban', '2022-04-05 05:29:37', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(334, 'profepolicban', '2022-04-05 05:29:38', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(335, 'profepolicban', '2022-04-05 05:29:38', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(336, 'profepolicban', '2022-04-05 05:29:38', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(337, 'profepolicban', '2022-04-05 05:29:39', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(338, 'profepolicban', '2022-04-05 05:29:39', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(339, 'profepolicban', '2022-04-05 05:29:39', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(340, 'profepolicban', '2022-04-05 05:29:39', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(341, 'profepolicban', '2022-04-05 05:29:40', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(342, 'profepolicban', '2022-04-05 05:29:40', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(343, 'profepolicban', '2022-04-05 05:29:40', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(344, 'profepolicban', '2022-04-05 05:29:40', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(345, 'profepolicban', '2022-04-05 05:29:40', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(346, 'profepolicban', '2022-04-05 05:29:43', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(347, 'profepolicban', '2022-04-05 05:50:53', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(348, 'profepolicban', '2022-04-05 05:53:28', 'Fez login no sistema com o IP', '::1', 0),
(349, 'profepolicban', '2022-04-05 05:56:10', 'Fez login no sistema com o IP', '::1', 0),
(350, 'profepolicban', '2022-04-05 05:56:42', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(351, 'profepolicban', '2022-04-05 06:03:22', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(352, 'profepolicban', '2022-04-05 06:06:07', 'Fez login no sistema com o IP', '::1', 0),
(353, 'profepolicban', '2022-04-05 06:08:41', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(354, 'profepolicbans', '2022-04-05 06:09:10', 'Fez login no sistema com o IP', '::1', 0),
(355, 'profepolicbans', '2022-04-05 06:09:25', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(356, 'profepolicban', '2022-04-05 06:10:11', 'Fez login no sistema com o IP', '::1', 0),
(357, 'profepolicban', '2022-04-05 06:10:21', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(358, 'profepolicbans', '2022-04-05 06:11:08', 'Fez login no sistema com o IP', '::1', 0),
(359, 'profepolicbans', '2022-04-05 06:11:17', 'Tentou acessar uma página proibida com IP: ', '::1', 0),
(360, 'profepolicban', '2022-04-05 06:11:58', 'Fez login no sistema com o IP', '::1', 0),
(361, 'profepolicban', '2022-04-05 12:32:42', 'Fez login no sistema com o IP', '::1', 0),
(362, 'profepolicban', '2022-04-05 20:59:05', 'Fez login no sistema com o IP', '::1', 0),
(363, 'profepolicban', '2022-04-06 05:25:36', 'Fez login no sistema com o IP', '::1', 0),
(364, 'profepolicban', '2022-04-06 14:41:56', 'Fez login no sistema com o IP', '::1', 0),
(365, 'profepolicban', '2022-04-07 01:30:51', 'Fez login no sistema com o IP', '::1', 0),
(366, 'profepolicban', '2022-04-07 05:28:10', 'Demitiu o usuário z10 - teste', '::1', 1),
(367, 'profepolicban', '2022-04-07 05:30:24', 'Demitiu o usuário z10 - s', '::1', 1),
(368, 'profepolicban', '2022-04-09 03:47:22', 'Fez login no sistema com o IP', '::1', 0),
(369, 'profepolicban', '2022-04-09 04:00:51', 'Fez login no sistema com o IP', '::1', 0),
(370, 'profepolicban', '2022-04-09 04:02:55', 'Fez login no sistema com o IP', '::1', 0),
(371, 'profepolicban', '2022-04-09 04:04:18', 'Fez login no sistema com o IP', '::1', 0),
(372, 'profepolicban', '2022-04-10 05:52:08', 'Fez login no sistema com o IP', '::1', 0),
(373, 'profepolicban', '2022-04-10 14:28:48', 'Fez login no sistema com o IP', '::1', 0),
(374, 'profepolicban', '2022-04-10 14:30:51', 'Promoveu o usuário z10 - aa', '::1', 1),
(375, 'profepolicban', '2022-04-10 14:42:39', 'Promoveu o usuário z10 - as', '::1', 1),
(376, 'profepolicban', '2022-04-10 14:44:27', 'Promoveu o usuário z10 - as', '::1', 1),
(377, 'profepolicban', '2022-04-10 14:46:13', 'Promoveu o usuário z10 - cc', '::1', 1),
(378, 'profepolicban', '2022-04-10 14:46:59', 'Promoveu o usuário z10 - BCT', '::1', 1),
(379, 'profepolicban', '2022-04-10 15:02:11', 'Promoveu o usuário z10 - as', '::1', 1),
(380, 'profepolicban', '2022-04-10 15:03:03', 'Promoveu o usuário z10 - as', '::1', 1),
(381, 'profepolicban', '2022-04-11 02:07:59', 'Fez login no sistema com o IP', '::1', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lojas`
--

CREATE TABLE `lojas` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `fotoloja` varchar(255) NOT NULL DEFAULT 'https://i.imgur.com/KWnWHA2.png',
  `fixa` int(11) DEFAULT 0,
  `selo` int(11) DEFAULT 0,
  `aberta` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `lojas`
--

INSERT INTO `lojas` (`id`, `nome`, `fotoloja`, `fixa`, `selo`, `aberta`) VALUES
(1, 'AssasinoMG', 'https://i.imgur.com/jjJfBlU.png', 1, 2, 1),
(2, 'AssasinoDL', 'https://i.imgur.com/KWnWHA2.png', 1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `membros`
--

CREATE TABLE `membros` (
  `id` int(255) NOT NULL,
  `nome_complet` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `usr_senha` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `fotoperfil` varchar(255) DEFAULT NULL,
  `usr_perm` int(255) DEFAULT 0,
  `afiliado` int(11) NOT NULL DEFAULT 0,
  `usr_cadastro` date DEFAULT NULL,
  `usr_ip` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `membros`
--

INSERT INTO `membros` (`id`, `nome_complet`, `cpf`, `usuario`, `email`, `nascimento`, `usr_senha`, `facebook`, `instagram`, `fotoperfil`, `usr_perm`, `afiliado`, `usr_cadastro`, `usr_ip`, `query`, `status`) VALUES
(1, 'Gabriel', NULL, 'profepolicban', 'gabrielbig1778@gmail.com', '2004-03-24', '$2y$10$ugBOze8DuiPFXNv/8jo5ru4bkpohHGs/QkgAQeuRzHHnzpz1fIabG', NULL, NULL, 'https://i.imgur.com/wgraH0g.jpg', 1, 0, NULL, '::1', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` longtext DEFAULT NULL,
  `valor` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `porcentagem` int(11) NOT NULL,
  `porcentagem_lucro` varchar(255) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `foto_prev` varchar(255) DEFAULT NULL,
  `votos` int(11) DEFAULT 0,
  `pontos` int(11) DEFAULT 0,
  `criador` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `valor`, `categoria`, `status`, `porcentagem`, `porcentagem_lucro`, `data`, `foto_prev`, `votos`, `pontos`, `criador`) VALUES
(1, 'teste', 's', '50', 'eletronicos', 3, 50, '20', '2022-09-19 00:31:36', 'https://static5.depositphotos.com/1004251/485/i/950/depositphotos_4857741-stock-photo-headphone.jpg', 95, 420, 0),
(2, 'teste2\r\n', NULL, '100', NULL, 3, 50, '30', '2022-09-19 00:49:57', 'https://static8.depositphotos.com/1055647/1051/i/950/depositphotos_10516962-stock-photo-macro-close-up-of-white.jpg', 157, 614, 0),
(3, 'teste3', NULL, '100', NULL, 1, 30, '50', '2022-09-19 00:51:25', 'https://static8.depositphotos.com/1055647/1051/i/950/depositphotos_10516962-stock-photo-macro-close-up-of-white.jpg', 1, 5, 0),
(4, 'teste4', NULL, '100', NULL, 1, 40, '34', '2022-09-19 00:51:25', 'https://static8.depositphotos.com/1055647/1051/i/950/depositphotos_10516962-stock-photo-macro-close-up-of-white.jpg', 68, 333, 0),
(5, 'teste5', NULL, '100', NULL, 1, 10, '55', '2022-09-19 00:51:46', 'https://static8.depositphotos.com/1055647/1051/i/950/depositphotos_10516962-stock-photo-macro-close-up-of-white.jpg', 1, 5, 0),
(6, 'teste6', NULL, '100', NULL, 1, 8, '10', '2022-09-19 00:51:46', 'https://static8.depositphotos.com/1055647/1051/i/950/depositphotos_10516962-stock-photo-macro-close-up-of-white.jpg', 258, 1277, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_afl`
--

CREATE TABLE `produtos_afl` (
  `id` int(11) NOT NULL,
  `nome_afl` varchar(255) DEFAULT NULL,
  `id_prod` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos_afl`
--

INSERT INTO `produtos_afl` (`id`, `nome_afl`, `id_prod`, `status`) VALUES
(6, 'profepolicban', '6', 1),
(7, 'profepolicban', '5', 1),
(8, 'profepolicban', '2', 1),
(9, 'profepolicban', '4', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `imgprod`
--
ALTER TABLE `imgprod`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `lojas`
--
ALTER TABLE `lojas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `membros`
--
ALTER TABLE `membros`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usr_habbo` (`usuario`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos_afl`
--
ALTER TABLE `produtos_afl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `imgprod`
--
ALTER TABLE `imgprod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT de tabela `lojas`
--
ALTER TABLE `lojas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `membros`
--
ALTER TABLE `membros`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produtos_afl`
--
ALTER TABLE `produtos_afl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
