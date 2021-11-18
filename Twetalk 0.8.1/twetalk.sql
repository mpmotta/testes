-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 02-Nov-2021 às 19:35
-- Versão do servidor: 5.6.51
-- versão do PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `twetalk`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil`
--

CREATE TABLE `perfil` (
  `id` int(11) NOT NULL,
  `usuario` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apelido` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `papelParede` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `nascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `perfil`
--

INSERT INTO `perfil` (`id`, `usuario`, `email`, `apelido`, `avatar`, `papelParede`, `cidade`, `bio`, `nascimento`) VALUES
(3, 'vezio', 'mpmotta@gmail.com', 'The Chosen One', '081016fdc801054fa0422cb4a0080797.jpg', '599df8b0b5f2f6041f9e58929f227cea.jpg', 'Tatooine', 'you dontÂ´t know the power of the dark side!\r\nMy name is Darh Vader', '1973-03-23'),
(4, 'Manu', 'manu@gmail.com', 'Menuela Gamer Thunderbolt', '812e0fb48cbd3faf1af8b1ca2cf1a16d.jpg', '8bf9e47a1e114b21b326b9e1e48215bc.jpg', 'Hogwarts , New York - USA e Porto Alegre', 'Manuela, adoro Riverdale e Harry Potter', '2010-06-23'),
(5, 'panzer', 'panzer@eu.com', 'Soldier of Love', '49201037e1761a18c27e03fa1af9ee5a.jpg', '91d4a1cc6d03c7a48f6524431fe09393.jpg', 'Porto Alegre - RS - Brasil', 'Lay down your arms\r\nAnd surrender to me\r\nOh, lay down your arms\r\nAnd love me peacefully,\r\nYeah\r\nUse your arms for squeezing,\r\nPleasing the one who loves you so', '1999-10-10'),
(6, 'papa', 'papa@mail.com', 'PapÃ£o Come Come', 'a629f0f7c5d2dcc58c1c6e4282e71bc9.jpg', 'faa8a797e0fd76fd1f4a474c5143d6ed.jpg', 'Nhowere', 'hahahahahahhaha', '1978-08-18'),
(7, 'abdulla', 'abdulla@manulla.com', '', 'no_img.png', 'vazio.png', NULL, NULL, NULL),
(8, 'vozÃ£o', 'vozao@ceara.com', '', 'no_img.png', 'vazio.png', NULL, NULL, NULL),
(9, 'JohnLennon', 'lennon@beatles.uk', 'John & Yoko', '26af1e75fce8ded0c1c08fd106ec376a.png', '38bf98e22042f2aee050703c9cf2b253.jpg', 'Lilverpool', 'John Winston Ono Lennon foi um cantor, compositor e ativista da paz britÃ¢nico que fundou os Beatles, a banda de maior sucesso comercial na histÃ³ria da mÃºsica popular. Sua parceria de composiÃ§Ã£o com o colega de banda Paul McCartney foi uma das mais cÃ©lebres da histÃ³ria da mÃºsica.', '1940-10-09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `postagem` text COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `postagem`, `usuario`, `data`) VALUES
(23, 'eu amo Riverdale!', 'Manu', '2021-11-01 17:06:59'),
(24, 'apaputa que pariu!', 'panzer', '2021-11-01 17:09:10'),
(25, 'agora acho que funciona', 'panzer', '2021-11-01 17:26:23'),
(27, 'consegui!', 'vezio', '2021-11-01 17:28:09'),
(29, 'tah e ae????', 'vezio', '2021-11-01 23:17:40'),
(31, 'que os jogos comecem', 'vezio', '2021-11-02 16:54:35'),
(32, 'o que hÃ¡ com o avatar?', 'vezio', '2021-11-02 16:55:31'),
(33, 'adoro riverdale', 'Manu', '2021-11-02 17:55:13'),
(36, 'aaaaa', 'panzer', '2021-11-02 18:11:40'),
(37, 'ddddddd', 'panzer', '2021-11-02 18:11:46'),
(39, 'hahahahahahahhaah', 'papa', '2021-11-02 18:14:45'),
(40, 'consegui!', 'papa', '2021-11-02 18:17:01'),
(41, 'Imagine all the people!', 'JohnLennon', '2021-11-02 19:10:38');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `usuario` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `usuario`, `email`, `senha`, `data`) VALUES
(7, 'jakku', 'jakku@deitado.com', 'a49c1fae918bd2cf205aabab77a7c11ca53c0f5b1a26d217797f36b8553feb092e021f023ddc421dcc692632a5cdf725bb251059ac477f1e703dce95f763487f', '2021-10-30 04:32:42'),
(8, 'luke', 'luke@jedi.com', '27ed26332f7ef598943039416e11868b9f32b230fb8b2fe7448b5cb98d7525ff63e348b15959b8d92b8ed353a9c317bf13bdf2a2e8e7e3b320ef10e223a00070', '2021-10-30 04:41:27'),
(9, 'vezio', 'mpmotta@gmail.com', '1bb3b4b624a311dc8071c45076d014875b62c9147071a2c0ed51cc0b0b17868ee7fdf113917334a7866db9cd7716173f27397712d2c78e99f9bf36830fc01bd3', '2021-10-30 16:35:57'),
(10, 'Manu', 'manu@gmail.com', '81cbd6541287577f94c7e92e7ff7b07c136ec7ec0ebdcb53e64ad6c40124fbbc08ca614af5dc5b86d002286530970f9ab7295466e6633c8e711b4ec2b4e5aebc', '2021-11-01 15:50:49'),
(11, 'panzer', 'panzer@eu.com', 'a49c1fae918bd2cf205aabab77a7c11ca53c0f5b1a26d217797f36b8553feb092e021f023ddc421dcc692632a5cdf725bb251059ac477f1e703dce95f763487f', '2021-11-01 17:08:45'),
(12, 'hulk', 'banner@marvel.com', 'd42b0ce5b8f4ff02e4dc560ef101be2b94be0dd14c5e2703f59e871b25fdcd280e1440c62b95afb8bd5f8ba980355918727172ca8b9079ea9fc40c90d11ba253', '2021-11-02 17:01:23'),
(13, 'papa', 'papa@mail.com', '330ed74fff063d10244cc349ac44c3d027b8b18c3c83a22e99eb4b1c6beaaba4ce0a1c1c7226552df0e4d6890c25061af631543d7cb5ddb46b1d29b035986fde', '2021-11-02 18:13:21'),
(14, 'abdulla', 'abdulla@manulla.com', '1b09deb2e2e7bf53f8673cd927f7151a9e4ed6680596416856017780c1add5b8208f1c028a3e61f3bd55cce7bc468e903472ff1de19f352b2f8ef4f47b746798', '2021-11-02 18:32:29'),
(15, 'vozÃ£o', 'vozao@ceara.com', '0d48e2d0e958b92580d2a06184888a347a9d8041688bbc37e68e5a7c999f84a3a2f30d882c2ac450d7049725c95539199eb8c7711df69835409696e5155c5773', '2021-11-02 18:53:20'),
(16, 'JohnLennon', 'lennon@beatles.uk', '3be078d394e641ef86657b9944f014b5af76c70d3f1a2718d563418cb27ed5f7ef6588853239178d8d8d22455e823320cbae5391ef0dccb30812815627f4c42a', '2021-11-02 19:09:53');

--
-- Acionadores `users`
--
DELIMITER $$
CREATE TRIGGER `Tgr_perfil_insert` AFTER INSERT ON `users` FOR EACH ROW BEGIN
	INSERT INTO perfil (usuario, email, avatar, papelParede) VALUES(NEW.usuario, NEW.email, 'no_img.png', 'vazio.png');
END
$$
DELIMITER ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
