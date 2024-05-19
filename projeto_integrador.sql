-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 19/05/2024 às 08:17
-- Versão do servidor: 8.0.30
-- Versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto_integrador`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `telefone_referencia` varchar(20) DEFAULT NULL,
  `titular_numero_referencia` varchar(50) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `pessoas`
--

INSERT INTO `pessoas` (`cpf`, `nome`, `telefone`, `telefone_referencia`, `titular_numero_referencia`, `imagem`, `endereco`, `updated_at`, `created_at`) VALUES
('00359427979', 'Antônio Cardoso dos Santos', '41988102583', NULL, NULL, '7dec0c0e4d0c709a408917cf8ce49c12.png', 'Francisco Nunes, 581', '2024-05-19 07:07:42', '2024-05-19 07:07:42'),
('00488746981', 'Lucineia de Souza', '41988931771', NULL, NULL, '5911b662d8ddf6a4c4201a95ccb17dfc.png', 'R. Josefina Zanier, 379 - Prado Velho', '2024-05-19 07:57:26', '2024-05-19 07:57:26'),
('01163091995', 'Jocilene da Silva Rodrigues', NULL, NULL, NULL, '1b2fd161d40226784ac6cb353cea7fa3.png', 'Rua Esperandio Domingos Foggiatto, 106 - Prado Velho', '2024-05-19 07:42:54', '2024-05-19 07:42:54'),
('02289957950', 'Marcos dos Santos', '41998883388', NULL, NULL, 'a6170fcca6beca33135d367f8cac4371.png', 'Rua Esperandio Domingos Foggiatto, 254 - Prado Velho', '2024-05-19 08:02:23', '2024-05-19 08:02:23'),
('03476551903', 'Luciane Canuto dos Santos Wilfer', '41995809310', NULL, NULL, '5099751a70699771f5eba6e8896c4c3a.png', 'R. Josefina Zanier, 435 - Prado Velho', '2024-05-19 07:56:33', '2024-05-19 07:56:33'),
('04093306982', 'Carlos Luis da Conceição', NULL, NULL, NULL, 'a21d79bd04a7a867a8682028bf93ff03.png', 'R. Plínio Barroso de Castro, 43 - Prado Velho', '2024-05-19 07:26:34', '2024-05-19 07:26:34'),
('04298542939', 'Júlio César do Espírito Santo', NULL, NULL, NULL, '7e63922b45310dbc8953c9024c551bbf.png', 'R. Josefina Zanier, 543 - Prado Velho', '2024-05-19 07:48:12', '2024-05-19 07:48:12'),
('04452802982', 'Priscila Almeida Paula Barbosa', NULL, NULL, NULL, '3c4d6860d4b18c9c5d0a6c3040f9eb20.png', 'R. Josefina Zanier, 523 - Prado Velho', '2024-05-19 08:16:56', '2024-05-19 08:16:56'),
('04621318900', 'Katia Mauricia Barbosa Marcelino', '41996449172', NULL, NULL, '655b4424dffd7916832b49acdf97d98d.png', 'R. Felipe Camarão, 781 - Prado Velho', '2024-05-19 07:49:04', '2024-05-19 07:49:04'),
('04715513927', 'Marilza Pereira Morais', '04184322682', NULL, NULL, '223e89523ccb04587df9b10ce7750aba.png', 'R. Plínio Barroso de Castro, 64 - Prado Velho', '2024-05-19 08:10:55', '2024-05-19 08:10:55'),
('05139543923', 'Inelsi Aparecida Leme', NULL, NULL, NULL, 'eddedb849d5dac9707ba3467f8d556f0.png', 'R Antônio Vieira Borges, 33 - Prado Velho', '2024-05-19 07:36:47', '2024-05-19 07:36:47'),
('05457563910', 'José Carlos Lemos Filho', '41995325206', NULL, NULL, 'c360943a1385061753e3535d9d1e9915.png', 'R. Guabirotuba, 181 - Prado Velho', '2024-05-19 07:44:22', '2024-05-19 07:44:22'),
('05487195943', 'Marcia dos Santos', NULL, NULL, NULL, '22adf850b18be69e82204024b7f4981c.png', 'R. Mario Romagnoli, 43 - Prado Velho', '2024-05-19 08:00:11', '2024-05-19 08:00:11'),
('05927483917', 'Francisco de Assis Bueno', '41997635116', NULL, NULL, 'ecc4f4b32c1d1782dff5b16891af98fa.png', 'Embaixador Hipolito de Araujo, 533', '2024-05-19 07:31:44', '2024-05-19 07:31:44'),
('06043530902', 'Gilza Alaide dos Santos', '41998689985', NULL, NULL, '127a232694c9756be859a747056108a7.png', 'Manoel Freire, 146', '2024-05-19 07:32:35', '2024-05-19 07:32:35'),
('06696699970', 'Marcia Souza de Oliveira', '41998405018', NULL, NULL, 'adacbb5b20e2c98dce5c039b5195ef48.png', 'R. Plínio Barroso de Castro, 223 - Prado Velho', '2024-05-19 08:00:59', '2024-05-19 08:00:59'),
('06864334910', 'Maria Eduarda Beraldi Ripoli', '41998494043', NULL, NULL, '338449233aa4164211cc6624270a14c7.png', 'R. Plínio Barroso de Castro, 436 - Prado Velho', '2024-05-19 08:08:09', '2024-05-19 08:08:09'),
('06880090931', 'Lucas Luiz Zaida', '41984356220', NULL, NULL, '90a74cf4155db0e72961d386d043a73a.png', 'R. Manoel Severiano da Fonseca, 52 - Prado Velho', '2024-05-19 07:55:02', '2024-05-19 07:55:02'),
('06921497917', 'Josiane Pereira Morais', '41997599643', NULL, NULL, '4f3c12d47b9ce655d95b5fcfa7379147.png', 'R. Plínio Barroso de Castro, 43 - Prado Velho', '2024-05-19 07:45:52', '2024-05-19 07:45:52'),
('07037986933', 'Ketllin Souza de Oliveira', '41998405018', NULL, NULL, '445e1b31c89404b888a09a10764249c1.png', 'R. Plínio Barroso de Castro, 223 - Prado Velho', '2024-05-19 07:50:20', '2024-05-19 07:50:20'),
('07189846921', 'Marieli Terezinha Moreira', '41997384541', NULL, NULL, '0de254525dcb8752ae5568fe198f1570.png', 'R. Emb. Hipólito de Araújo, 265 - Rebouças', '2024-05-19 08:09:35', '2024-05-19 08:09:35'),
('07336075789', 'Michel de Barros Doria', '41999903396', NULL, NULL, '89ba8d924c3c424feeefe82385a6107d.png', 'R. Josefina Zanier, 553 - Prado Velho', '2024-05-19 08:13:15', '2024-05-19 08:13:15'),
('07584073948', 'Leondina Ribeiro Moia', NULL, '41995989029', NULL, '41cc79743b4ec99751e57d3530e1cc5d.png', 'R. Dr. Alberto Franco Ferreira Da Costa, 128 - Rebouças', '2024-05-19 07:51:57', '2024-05-19 07:51:57'),
('07784156944', 'Hamilton Miguel da Luz', NULL, NULL, NULL, 'd5c7147441902ad10473d967040e6212.png', 'Irineu Adami, 144', '2024-05-19 07:34:48', '2024-05-19 07:34:48'),
('08224219971', 'Juliana Canuto dos Santos', NULL, '41985027363', 'Sthepnen', '36b0d4dfca57ebaee8b6206d25fae3f7.png', 'Rua Dorival Almir Zagonel, 15 - Prado Velho', '2024-05-19 07:46:42', '2024-05-19 07:46:42'),
('09359694975', 'Beatriz Daiane Melchior da Silva', '41998427212', NULL, NULL, '0ed35fd6581c89aed46c009289fa7de1.png', 'R. Josefina Zanier, 281 - Prado Velho', '2024-05-19 07:24:56', '2024-05-19 07:24:56'),
('09925165954', 'Cenira Pereira Soares', '04199404958', NULL, NULL, '13749272cb58ff6c9ed4481b3df4515d.png', 'Josefina Zanier, 311', '2024-05-19 07:27:42', '2024-05-19 07:27:42'),
('09998816980', 'Jessica Cheyenne Delfina Miranda', '41999888374', '41995831863', 'Esposo', '5f70b6c478b8f34a4f57a5b1e887f16a.png', 'Viaduto Colorado, 1130 - Rebouças', '2024-05-19 07:39:30', '2024-05-19 07:39:30'),
('10262426900', 'Maiara Vitória Messias Alves', '41996575685', '41999321421', NULL, '2e0545fc667993b6fe91a39a526e8d47.png', 'R. Irineu Adami, 143 - Prado Velho', '2024-05-19 07:59:09', '2024-05-19 07:59:09'),
('10333620933', 'Jeferson de Souza dos Santos', '41999357966', NULL, NULL, '2da8e54fdd53e39949f992a4d6d5cd8e.png', 'R. Irineu Adami, 150 - Prado Velho', '2024-05-19 07:38:28', '2024-05-19 07:38:28'),
('10440519900', 'Patrick Gustavo da Silva Teixeira', '41996939955', NULL, NULL, '5ad26f424052876d37f36f818fe34e81.png', 'Rua Esperandio Domingos Foggiatto, 42 - Prado Velho', '2024-05-19 08:16:20', '2024-05-19 08:16:20'),
('10576553840', 'Carlos Alberto dos Santos', NULL, NULL, NULL, 'aba8d88eaa7bff3ead2cb9792cd7ca0b.png', 'Esperandio Domingos Foggiatto, 158', '2024-05-19 07:04:18', '2024-05-19 07:04:18'),
('10887870961', 'Alan Jonathan dos Santos', '41998572616', NULL, NULL, '984c4a9b6640149b6d0c6c7aac847803.png', 'Rua Esperandio Domingos Foggiatto, 105 - Prado Velho', '2024-05-19 07:01:20', '2024-05-19 07:01:20'),
('11045288942', 'Keitlim Mariane Santos', '41998558985', NULL, NULL, '57e020185ecc05f86a30416e2738a58e.png', 'R. Aquelino Orestes Baglioli, 90 - Prado Velho', '2024-05-19 07:49:43', '2024-05-19 07:49:43'),
('11190906907', 'Jéssica Felix Ribeiro', '41996081778', NULL, NULL, 'd62931a191b478fa3c56d5fe6e23ce30.png', 'R. Irineu Adami, 143 - Prado Velho', '2024-05-19 07:40:40', '2024-05-19 07:40:40'),
('11672553997', 'Niltoel Machado dos Santos', '41996569413', NULL, NULL, '4abc3ee2145a772fb9f048f423f3e71e.png', 'R. Manoel Martins de Abreu, 323 - Jardim Botânico', '2024-05-19 08:15:26', '2024-05-19 08:15:26'),
('11896357989', 'Guilherme Rosa', '41999657609', NULL, NULL, 'cd843397d83558874bdd6532b5f5c256.png', 'Esperandio Domingos Foggiatto, 18', '2024-05-19 07:34:06', '2024-05-19 07:34:06'),
('12197714902', 'Franciele Mota Sales', '41995989029', NULL, NULL, '206ac2955d6da9ce947c1497ad46cd07.png', 'R. Dr. Alberto Franco Ferreira Da Costa, 128 - Rebouças', '2024-05-19 07:30:55', '2024-05-19 07:30:55'),
('12511741911', 'Stefany Vitoria dos Santos', '41985027363', NULL, NULL, 'd1fcb597cf47c0a08495dc4badfbafd2.png', 'Rua Dorival Almir Zagonel, 95', '2024-05-19 06:57:06', '2024-05-19 06:57:06'),
('12772320910', 'Marilu dos Santos Nascimento', '41999405741', NULL, NULL, '8a6e4edfc46f8c230a54c85e9222e5a7.png', 'R. Manoel Severiano da Fonseca, 36 - Prado Velho', '2024-05-19 08:10:13', '2024-05-19 08:10:13'),
('13877063900', 'Maria Eduarda da Silva Alves Soares de Paula', '41999575474', NULL, NULL, '3a61cfde0cfc02a585401122099539d9.png', 'R. Manoel Martins de Abreu, 271 - Jardim Botânico', '2024-05-19 08:05:37', '2024-05-19 08:05:37'),
('16747572980', 'Loan José Messias dos Santos', '41995666976', NULL, NULL, '794d428a5084f5235cf540f752dc336d.png', 'Rua Dorival Almir Zagonel, 33 - Prado Velho', '2024-05-19 07:58:10', '2024-05-19 07:58:10'),
('23530496804', 'Anderson da Silva', NULL, NULL, NULL, '78c2c6f7a7e0131f8d803ae074743e1f.png', 'R. Dr. Alberto Franco Ferreira Da Costa, 26 - Jardim Botânico', '2024-05-19 07:03:31', '2024-05-19 07:03:31'),
('40957365934', 'Derci Domingues', '41995170055', '41997941729', NULL, '1fcdfdab0dff0a34834d999cf20e6973.png', 'R. Emb. Hipólito de Araújo, 619B - Rebouças', '2024-05-19 06:48:49', '2024-05-19 06:48:49'),
('41026624991', 'Antonio Celestrino de Souza', '41998671171', NULL, NULL, '6ea98a1d967308507419d2ab4d25b5ba.png', 'Manoel Martins de Abreu, 406', '2024-05-19 06:57:59', '2024-05-19 06:57:59'),
('50041401972', 'Mario Roberto de Oliveira', '41995243576', NULL, NULL, '59366b3d8298437edb9a6a4b4e570c16.png', 'R. Josefina Zanier, 580 - Prado Velho', '2024-05-19 08:11:32', '2024-05-19 08:11:32'),
('50852248920', 'João Carlos Ribeiro', '41998309617', NULL, NULL, NULL, 'R. Dr. Alberto Franco Ferreira Da Costa, 18 - Jardim Botânico', '2024-05-19 07:42:10', '2024-05-19 07:42:10'),
('54088747968', 'Lourenço  Silva de Almeida', NULL, '41996901423', NULL, 'b718cedd014b77f8209a4dc2d81fcb2a.png', 'R. Alm. Gonçalves, 36 - Rebouças', '2024-05-19 07:53:53', '2024-05-19 07:53:53'),
('59967048972', 'Maria de Lourdes Almeida', '41995694957', NULL, NULL, '1dba9b89415af3396007ffc4141527b6.png', 'Rua Esperandio Domingos Foggiatto, 106 - Prado Velho', '2024-05-19 08:06:11', '2024-05-19 08:06:11'),
('68573383968', 'Ana Maria Araujo', '41997848240', NULL, NULL, '8f65d8a0d6cc58d59c48d8e2e07a2b8e.png', 'R. Emb. Hipólito de Araújo, 199 - Rebouças', '2024-05-19 07:02:34', '2024-05-19 07:02:34'),
('74806718904', 'Iara Maria Pereira de Almeida', NULL, NULL, NULL, 'c5acd3c561635139dbb357b1e6e3367b.png', 'R. Ana Friebe, 30 - Prado Velho', '2024-05-19 07:35:48', '2024-05-19 07:35:22'),
('75837579915', 'Adilson Romualdo da Costa', '04199679207', NULL, NULL, '0d2a16f43358ac3ce7446b4c454a70ba.png', 'R. Osíres de Brito, 20 - Prado Velho', '2024-05-19 06:59:53', '2024-05-19 06:59:53'),
('76845460906', 'Milton da Silva Reis', '41932631230', NULL, NULL, 'a293cafc73ac070e0403d2ec7e4fabcd.png', 'R. Plínio Barroso de Castro, 204 - Prado Velho', '2024-05-19 08:13:56', '2024-05-19 08:13:56'),
('77480449968', 'José Cilso da Silva', '41984361300', NULL, NULL, 'a85b9233943092e354d2283b085d735f.png', 'R. Sérgio Dudeck, 76 - Prado Velho', '2024-05-19 07:44:56', '2024-05-19 07:44:56'),
('79421482972', 'Lindamir Alves Mendes Ferreira', '41996033489', NULL, NULL, '3e74ae5f63b0d4e3c110eed1e95fd76f.png', 'R. Dr. Alberto Franco Ferreira Da Costa, 26 - Jardim Botânico', '2024-05-19 07:52:48', '2024-05-19 07:52:48'),
('81324723904', 'Edinei de Brito Machado', '41984558938', NULL, NULL, '30f04c7753f46564c9c7c02d5c341339.png', 'Rua Esperandio Domingos Foggiatto, 35 - Prado Velho', '2024-05-19 07:29:12', '2024-05-19 07:29:12'),
('83518673904', 'Maria Rodrigues Martins', '41998599281', NULL, NULL, '11050fd565cf0756408b5be37d385897.png', 'R. Manoel Martins de Abreu, 479 - Jardim Botânico', '2024-05-19 08:08:49', '2024-05-19 08:08:49'),
('85861693900', 'Márcio Antonio da Silva', NULL, NULL, NULL, 'f5d5c1cd8b671a602826c644846bbbfc.png', 'R. Sérgio Dudeck, 29 - Prado Velho', '2024-05-19 08:01:42', '2024-05-19 08:01:42'),
('87770784972', 'Maria Costa Lima', NULL, NULL, NULL, '84c137c280eba6332b7b74105e9a4336.png', 'R. Irineu Adami, 201 - Prado Velho', '2024-05-19 08:04:49', '2024-05-19 08:04:49'),
('91101930900', 'Janete dos Santos', NULL, NULL, NULL, '471f47fc3f4579776914ed23bd3c7a64.png', 'R. Emb. Hipólito de Araújo, 607 - Rebouças', '2024-05-19 07:37:32', '2024-05-19 07:37:32'),
('97468452920', 'Maria Aparecida da Silva', NULL, NULL, NULL, '6d582896dbbd82cde274115779341de8.png', 'Rua Dorival Almir Zagonel, 51 - Prado Velho', '2024-05-19 08:03:36', '2024-05-19 08:03:36');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`cpf`),
  ADD UNIQUE KEY `cpf` (`cpf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
