-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Set-2022 às 22:21
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `espa_saude`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `denuncia`
--

CREATE TABLE `denuncia` (
  `id_denuncia` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_ubs` int(11) DEFAULT NULL,
  `date_denuncia` date DEFAULT NULL,
  `titulo_denuncia` varchar(40) DEFAULT NULL,
  `texto_denuncia` varchar(100) DEFAULT NULL,
  `resposta_denuncia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `denuncia`
--

INSERT INTO `denuncia` (`id_denuncia`, `id_usuario`, `id_ubs`, `date_denuncia`, `titulo_denuncia`, `texto_denuncia`, `resposta_denuncia`) VALUES
(1, 2, 10, '0000-00-00', 'Tempo de espera', 'Fiquei 2 horas na fila pra aguardar ser chamada.', ''),
(2, 4, 9, '0000-00-00', 'Sem remédio', 'Não me disponibilizaram o remédio que eu precisava.', ''),
(3, 6, 8, '0000-00-00', 'Falta de Higiene', 'Lugar sem limpeza diária, tudo sujo sem comentários.', ''),
(4, 8, 7, '0000-00-00', 'Falta de médico', 'Fui realizar minha consulta e o médico não me atendeu, tive que remarca.', ''),
(5, 10, 6, '0000-00-00', 'Mal atendimento', 'fui atendido por um funcionário de forma grosseira e sem compreendimento da minha necessidade.', ''),
(6, 9, 5, '0000-00-00', 'Abuso', 'fui atendido por um médico de forma desagradável que abusou do meu espaço pessoal desrespeitando meu', ''),
(7, 7, 4, '0000-00-00', 'Abuso', 'Me desrespeitaram de forma verbal em questões de atendimento.', ''),
(8, 3, 3, '2022-08-28', 'bullying', 'Comentários gordofóbicos no setor de atendimentos realizados por funcionários.', ''),
(9, 1, 2, '2022-08-31', 'Vandalismo', 'Quebraram as janelas e postas de vidro com pedras, por favor alguém faz alguma coisa.', ''),
(10, 5, 1, '2022-09-01', 'Infraestrutura', 'Cadeiras do posto com as pernas tortas e outras quebradas, vazamento das torneiras e encanamento aca', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `informativo`
--

CREATE TABLE `informativo` (
  `id_informativo` int(11) NOT NULL,
  `titulo_informativo` varchar(45) DEFAULT NULL,
  `texto_informativo` varchar(100) DEFAULT NULL,
  `imagem_informativo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `desc_tipo_usuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ubs`
--

CREATE TABLE `ubs` (
  `id_ubs` int(11) NOT NULL,
  `endereco_ubs` varchar(100) DEFAULT NULL,
  `cep_ubs` varchar(10) NOT NULL,
  `email_ubs` varchar(100) NOT NULL,
  `nome_ubs` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ubs`
--

INSERT INTO `ubs` (`id_ubs`, `endereco_ubs`, `cep_ubs`, `email_ubs`, `nome_ubs`) VALUES
(0, 'Av: Saul Elkind, nº 4255 – Cj. Parigot de Souza', '', '', 'Unidade Básica de Saúde Parigot de Souza  \r\n'),
(1, 'Rua Café Bourbon, 730, Jardim Paraty\r\n', '', '', 'Unidade Básica de Saúde Chefe Newton'),
(2, ' Rua Vergílio Perin, nº 815 – Cj. Aquiles Stenghel', '', '', 'Unidade Básica de Saúde Aquiles Stenghel'),
(3, 'Av. Eugênio Gayon, nº 835 – Cj. Maria Cecília', '', '', 'Unidade Básica de Saúde Maria Cecília'),
(4, ' Rua Francisco Marques de Oliveira nº 800\r\n', '', '', 'Unidade Básica de Saúde João Paz'),
(5, 'Av.Humberto Puiguari Coutinho, nº 360, Cj. Milton Gavetti', '', '', 'Unidade Básica de Saúde Milton Gavetti'),
(6, 'Rua da Esperança, nº 98 – C.H. Carnascialli 1', '', '', 'Unidade Básica de Saúde Carnascialli'),
(7, 'Rua John Lennon, nº 0– Cj. Vivi Xavier ', '', '', 'Unidade Básica de Saúde Vivi Xavier'),
(8, ' Rua Cacilda Nasrala Neme nº 599', '', '', 'Unidade Básica de Saúde - Imagawa / Cabo Frio'),
(9, ' Rua André Buck, 585, Jd. Padovani', '', '', 'Unidade Básica de Saúde Padovani/ Vista Bela'),
(10, 'Av. Bento Amaral Monteiro, nº 1.660, Jd. Strass\r\n', '', '', 'Unidade Básica de Saúde Campos Verdes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome_usuario` varchar(60) DEFAULT NULL,
  `email_usuario` varchar(100) DEFAULT NULL,
  `senha_usuario` varchar(20) DEFAULT NULL,
  `telefone_usuario` varchar(20) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome_usuario`, `email_usuario`, `senha_usuario`, `telefone_usuario`, `id_tipo_usuario`) VALUES
(1, 'Anderson Fernandes', 'andersonjununinho1003@gmail.com', 'chuchu', '', 0),
(2, 'Emilly cordeiro', 'cordeiro.emilly@gmail.com', 'abacaxi123', '(43)96267-8190', 0),
(3, 'Juan junior', 'juan.carlos43@gmail.com', 'cebolaa3', '(43)96207-8120', 0),
(4, 'Emilly Teruel', 'Teruel.emillyz3@gmail.com', 'pirulito423', '(43)95267-8154', 0),
(5, 'Giovanna Andre', 'giovanna.byonce23@gmail.com', 'beringela24', '', 0),
(6, 'Rebeca Camargo', 'rebequinha.lindona@gmail.com', 'paodequeijo2', '(43)94206-8121', 0),
(7, 'Rafael Henrique', 'rafael.1002@gmail.com', 'sorveteazul9', '', 0),
(8, 'Sheila Silva', 'silva123.43@gmail.com', 'gatinha2014', '', 0),
(9, 'Matheus Cleber', 'matheus56cl@gmail.com', 'clebinho67', '(43)94206-7563', 0),
(10, 'Antonio Jose', 'toninho.5432@gmail.com', 'toninhodocaminhao1', '', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `denuncia`
--
ALTER TABLE `denuncia`
  ADD PRIMARY KEY (`id_denuncia`),
  ADD KEY `fk_denuncia_usuario` (`id_usuario`),
  ADD KEY `fk_denuncia_ubs` (`id_ubs`);

--
-- Índices para tabela `informativo`
--
ALTER TABLE `informativo`
  ADD PRIMARY KEY (`id_informativo`);

--
-- Índices para tabela `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Índices para tabela `ubs`
--
ALTER TABLE `ubs`
  ADD PRIMARY KEY (`id_ubs`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_usuario_tipo_usuario` (`id_tipo_usuario`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `denuncia`
--
ALTER TABLE `denuncia`
  ADD CONSTRAINT `fk_denuncia_ubs` FOREIGN KEY (`id_ubs`) REFERENCES `ubs` (`id_ubs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_denuncia_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_tipo_usuario` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
