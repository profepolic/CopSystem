-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Ago-2023 às 00:15
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
-- Banco de dados: `copsystem`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aguardando`
--
-- Erro ao ler a estrutura para a tabela copsystem.aguardando: #1030 - Obteve erro 194 &quot;Tablespace is missing for a table&quot; no manipulador de tabelas InnoDB
-- Erro ao ler dados para tabela copsystem.aguardando: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `copsystem`.`aguardando`&#039; na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `id_cargo` int(11) DEFAULT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissao_promover` int(11) DEFAULT NULL,
  `permissao_demitir` int(11) DEFAULT NULL,
  `permissao_advertir` int(11) DEFAULT NULL,
  `permissao_rebaixar` int(11) DEFAULT NULL,
  `permissao_banir` int(11) DEFAULT NULL,
  `valor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`id`, `id_cargo`, `nome`, `permissao_promover`, `permissao_demitir`, `permissao_advertir`, `permissao_rebaixar`, `permissao_banir`, `valor`) VALUES
(1, 1, 'Sócio', 0, 0, 0, 0, 0, '1'),
(2, 2, 'Agente', 0, 0, 0, 0, 0, '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(4, 5, 11, 'aa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissao`
--

CREATE TABLE `permissao` (
  `id` int(11) NOT NULL,
  `permissao` varchar(110) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `prm_suporte`
--
-- Erro ao ler a estrutura para a tabela copsystem.prm_suporte: #1030 - Obteve erro 194 &quot;Tablespace is missing for a table&quot; no manipulador de tabelas InnoDB
-- Erro ao ler dados para tabela copsystem.prm_suporte: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `copsystem`.`prm_suporte`&#039; na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao`
--

CREATE TABLE `situacao` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `situacao`
--

INSERT INTO `situacao` (`id`, `nome`) VALUES
(0, 'DESATIVADO'),
(1, 'ATIVADO'),
(2, 'DEMITIDO'),
(3, 'BANIDO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `unique_id` int(11) DEFAULT NULL,
  `nome` varchar(330) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(330) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(110) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissao` varchar(110) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `situacao` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `unique_id`, `nome`, `senha`, `email`, `permissao`, `situacao`, `status`) VALUES
(5, 5, 'oskino', '$2y$10$j0nkkVymlqfzOolChocyjedGetpSJInCT.Kbjvq3kw1Y/iVLO.9z2', 'sk4in8@gmail.com', '1', 1, NULL),
(12, 12, 'profepolicban', '$2y$10$IhqtGwl773JXpzTqyJSPPO.gjAsCwOphiEStPwtnm62OK2B.16ba.', 'profehabbo@gmail.com', '1', 1, 'Offline agora');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Índices para tabela `permissao`
--
ALTER TABLE `permissao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `situacao`
--
ALTER TABLE `situacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `permissao`
--
ALTER TABLE `permissao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `situacao`
--
ALTER TABLE `situacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
