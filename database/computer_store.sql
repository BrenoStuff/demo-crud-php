-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Maio-2022 às 21:51
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `computer_store`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `photo` varchar(400) NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `photo`, `title`, `price`) VALUES
(1, 'https://a-static.mlcdn.com.br/618x463/controle-remoto-para-tv-philco-lelong/eletromassa/2874671827/4e6418407f869acc149138a57b937fce.jpg', 'Controle remoto de carro', 'R$ 99,99'),
(2, 'https://a-static.mlcdn.com.br/618x463/computador-completo-intel-digital-corp-8gb-ssd-240gb-monitor-15-digital-info/uaicomerciodigital/di1887km15/56722c07d5f5626b08694f6ef0810b7f.jpg', 'Computador Completo Intel Digital Corp', 'R$ 1.617,56'),
(3, 'https://a-static.mlcdn.com.br/618x463/impressora-multifuncional-epson-ecotank-l3250-tanque-de-tinta-colorida-usb-wi-fi/magazineluiza/231776800/9af65f2b0a224acdfa86ac804507a0f4.jpg', 'Impressora Multifuncional Epson Ecotank L3250', 'R$ 1.259,10'),
(4, 'https://a-static.mlcdn.com.br/618x463/notebook-acer-a515-54-34ld-intel-core-i3-10110u-4gb-ssd256gb/mmsantosinformatica/0000000008002/73a137fb1ffc393353aecd50b06bf827.jpg', 'Notebook Acer A515-54-34ld', 'R$ 3.396,94'),
(5, 'https://a-static.mlcdn.com.br/618x463/pc-gamer-facil-barato-completo-intel-core-i5-8gb-hd-500gb-geforce-2gb-monitor-19-kit-gamer-teclado-mouse-headset-facil-computadores/2eletroinfo/15202224080/4bda0935b8e50fcc46305591eb04352b.jpg', 'Computador Completo - Teclado Mouse Headset', 'R$ 2.777,90'),
(6, 'https://a-static.mlcdn.com.br/618x463/notebook-macbook-air-133-apple-m1-8gb-256gb-ssd-prateado/magazineluiza/227625500/43ed459d5a87a2e62e35e5eb394b0c94.jpg', 'Notebook Macbook Air 13,3” Apple M1', 'R$ 8.648,07'),
(7, 'https://a-static.mlcdn.com.br/618x463/computador-pc-gamer-core-i5-3-8ghz-ram-8gb-nvidia-gt-730-2gb-ssd-240gb-windows-10-intel/tartysinformatica/98df8d3ad54311eba4574201ac18500e/f49a208613c600f013a78d9ca89a767d.jpeg', 'Computador PC Gamer Core I5', 'R$ 2.572,88'),
(8, 'https://a-static.mlcdn.com.br/618x463/mouse-sem-fio-movitec-optico-1200dpi-3-botoes-omw-02/magazineluiza/225991000/07027179d5adb8e20b0e78e47bcdedf3.jpg', 'Mouse sem Fio Movitec Óptico', 'R$ 39,90'),
(9, 'https://a-static.mlcdn.com.br/618x463/impressora-multifuncional-hp-deskjet-ink-advantage-2774-jato-de-tinta-colorida-wi-fi-usb/magazineluiza/135301200/0b79be11f1cbb43e27294897322b72d5.jpg', 'Impressora Multifuncional HP Deskjet Ink Advantage', 'R$ 409,11');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
