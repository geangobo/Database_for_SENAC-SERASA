-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: streamingdadosslq
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `id_usuario` int DEFAULT NULL,
  `conteudo` varchar(280) DEFAULT NULL,
  `postagem_id` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `fk_comentario_postagem1_idx` (`postagem_id`),
  CONSTRAINT `fk_comentario_postagem1` FOREIGN KEY (`postagem_id`) REFERENCES `postagem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (NULL,'oiii',NULL,1),(NULL,'rsrsrs',NULL,2),(NULL,'assasaaa',NULL,3),(NULL,'fgfgfgf',NULL,4),(NULL,'uiuiuiui',NULL,5),(NULL,'gffgfgggfff',NULL,6),(NULL,'aasasas',NULL,7),(NULL,'asaasa',NULL,8),(NULL,'hgghghghgh',NULL,9),(NULL,'hgghghghgh',NULL,10),(NULL,'ddfdf',NULL,11),(NULL,'fffdfd',NULL,12),(NULL,'fffdfddfdf',NULL,13),(NULL,'fffdfddfdf',NULL,14),(NULL,'fffdfddfdffdf',NULL,15),(NULL,'dsdsdsd',NULL,16),(NULL,'dsdsdsddsdsd',NULL,17),(NULL,'dsdsdsddsdsd',NULL,18),(NULL,'gean kkkkkkkkkk',NULL,19);
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curtida`
--

DROP TABLE IF EXISTS `curtida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curtida` (
  `id` int NOT NULL,
  `id_postagem` int NOT NULL,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id`,`id_postagem`),
  KEY `fk_curtida_postagem1_idx` (`id`),
  CONSTRAINT `fk_curtida_postagem1` FOREIGN KEY (`id`) REFERENCES `postagem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curtida`
--

LOCK TABLES `curtida` WRITE;
/*!40000 ALTER TABLE `curtida` DISABLE KEYS */;
/*!40000 ALTER TABLE `curtida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `id_reproducao` int NOT NULL,
  `nome_reproducao` varchar(45) DEFAULT NULL,
  `usuario_id` int NOT NULL,
  `registro` datetime DEFAULT NULL,
  PRIMARY KEY (`id_reproducao`,`usuario_id`),
  KEY `fk_historico_usuario1_idx` (`usuario_id`),
  CONSTRAINT `fk_historico_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `usuario_premium` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`usuario_id`),
  KEY `fk_pagamento_usuario1_idx` (`usuario_id`),
  CONSTRAINT `fk_pagamento_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postagem`
--

DROP TABLE IF EXISTS `postagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postagem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conteudo` varchar(100) DEFAULT NULL,
  `registro` datetime DEFAULT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id`,`id_usuario`),
  KEY `fk_postagem_usuario1_idx` (`id_usuario`),
  CONSTRAINT `fk_postagem_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postagem`
--

LOCK TABLES `postagem` WRITE;
/*!40000 ALTER TABLE `postagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `postagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reproducao`
--

DROP TABLE IF EXISTS `reproducao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reproducao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `avaliacao` int DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL,
  `link_filme` varchar(100) DEFAULT NULL,
  `link_imagem` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reproducao`
--

LOCK TABLES `reproducao` WRITE;
/*!40000 ALTER TABLE `reproducao` DISABLE KEYS */;
INSERT INTO `reproducao` VALUES (4,'Cidade de Deus',NULL,'Buscapé é um jovem pobre, negro e sensível, que cresce em um universo de muita violência. Ele vive na Cidade de Deus, favela carioca conhecida por ser um dos locais mais violentos do Rio. Amedrontado com a possibilidade de se tornar um bandido, Buscapé é salvo de seu destino por causa de seu talento como fotógrafo, o qual permite que siga carreira na profissão. É por meio de seu olhar atrás da câmera que ele analisa o dia a dia da favela em que vive, onde a violência aparenta ser infinita.','https://www.youtube.com/embed/fZJUKixyeXM?autoplay=true','https://i.imgur.com//ZLUVxrk.jpeg'),(5,'O Auto da Compadecida',NULL,'As aventuras de João Grilo e Chicó, dois nordestinos pobres que vivem de golpes para sobreviver. Eles estão sempre enganando o povo de um pequeno vilarejo, inclusive o temido cangaceiro Severino de Aracaju, que os persegue pela região.','https://www.youtube.com/embed/ewaz-WuKdo8?autoplay=true','https://i.imgur.com//aK7Jszl.jpeg'),(6,'Tropa de Elite',NULL,'Tem como tema a violência urbana na cidade brasileira do Rio de Janeiro e as ações do Batalhão de Operações Policiais Especiais (BOPE) e da Polícia Militar do Estado do Rio de Janeiro.','https://www.youtube.com/embed/uZBiNJQxtGw?autoplay=true','https://i.imgur.com//6h4yqKv.jpeg'),(7,'Iracema',NULL,'O romance conta o amor de um branco, Martim Soares Moreno, pela índia Iracema, a virgem dos lábios de mel. A relação do casal serviria de alegoria para a formação da nação brasileira. A índia Iracema representaria a natureza virgem e a inocência enquanto o colonizador Martim representa a cultura (europeia).','https://www.youtube.com/embed/tj7oQexgULw?autoplay=true','https://i.imgur.com//WMBCC7Q.jpeg'),(8,'Tainá',NULL,'Tainá vive na Amazônia com o avô. Ela é perseguida por defender a floresta dos caçadores e precisa se mudar para uma vila. Lá, ela conhece Joninho, um menino da cidade grande. Juntos, a dupla aprende a lidar com os valores da cidade e da floresta.','https://www.youtube.com/embed/6ltNZKdcVHM?autoplay=true','https://i.imgur.com//xMpEjbE.jpeg'),(9,'O Menino no Espelho',NULL,'Aos 10 anos, o pequeno Fernando está cansado de fazer as tarefas chatas. Seu sonho é ter um sósia para cuidar delas enquanto ele poderia se divertir à vontade. Um dia, é exatamente isso que acontece: seu reflexo deixa o espelho e ganha vida.','https://www.youtube.com/embed/pd47VJzkKfQ?autoplay=true','https://i.imgur.com//UPM2ZDT.jpeg'),(10,'Turma da Mônica – Laços',NULL,'O Floquinho desaparece. Para encontrar seu cachorro de estimação, Cebolinha conta com os amigos Cascão, Mônica e Magali e, claro, um plano infalível.','https://superfilmes.ph/filmes/assistir-online-turma-da-monica-lacos/','https://i.imgur.com//5sGweJx.jpeg'),(11,'Operações Especiais',NULL,'Um grupo de policiais honestos é enviado a uma cidade do interior do Rio de Janeiro que sofre com o aumento da criminalidade. O governo convoca um delegado íntegro e reúne uma equipe especial para a campanha. Entre os agentes selecionados está Francis, uma investigadora novata que precisa provar que tem valor. Em pouco tempo eles resolvem o problema e são aclamados pela opinião pública. Mas a aplicação do rigor da lei começa a incomodar a todos e o governo se vê forçado a intervir novamente.','https://www.youtube.com/embed/xksgFpJK5hM?autoplay=true','https://i.imgur.com//z3dzNaQ.jpeg'),(12,'O Silêncio da Chuva',NULL,'O inspetor Espinosa e a policial Daia ficam encarregados de investigar o assassinato de um executivo que foi morto a tiros no banco de seu carro. Quando os envolvidos no caso desaparecem misteriosamente, a situação assume proporções inesperadas.','https://www.youtube.com/embed/zuLbmAZXEU0?autoplay=true','https://i.imgur.com//3vL4TfD.jpeg'),(13,'Minha Mãe é uma Peça',NULL,'Dona Hermínia é uma senhora de meia-idade, divorciada do marido, que a trocou por uma mulher mais jovem. Hiperativa, ela não larga o pé de seus filhos Marcelina e Juliano. Um dia, após descobrir que eles a consideram chata, ela resolve sair de casa sem avisar ninguém, deixando todos preocupados. Dona Hermínia decide visitar a querida tia Zélia para desabafar suas tristezas atuais e recordar os bons tempos do passado.','https://www.youtube.com/embed/HrST-4WLlbA?autoplay=true','https://i.imgur.com//ppDAy4c.jpeg'),(14,'Segunda chamada',NULL,'Histórias de superação, conflitos, divergências e obstáculos à realidade de educadores e alunos do ensino noturno na rotina de uma escola pública de São Paulo, em que pessoas entre 17 e 70 anos buscam uma vida melhor por meio dos estudos, depois de um dia duro de trabalho.','https://www.youtube.com/embed/-YeBxRv6huY?autoplay=true','https://i.imgur.com//z9vILQF.jpeg'),(15,'Os Outros',NULL,'Durante a Segunda Guerra, a devota Grace aguarda com os filhos o retorno do marido dos campos de batalha. Isolados em uma mansão numa ilha deserta, passam a observar estranhos acontecimentos ao seu redor.','https://www.youtube.com/embed/_O5cBsIDZmc?autoplay=true','https://i.imgur.com//pE6eQ7H.jpeg'),(16,'A Vida Pela Frente',NULL,'A trama é ambientada na cidade do Rio de Janeiro, no final de 1999, e acompanha um grupo de seis amigas que tenta descobrir seu lugar no mundo e trilhar sua própria trajetória. Acontece que, logo no início, elas são surpreendidas com a morte por afogamento de Beta (Flora Camolese), uma das meninas do sexteto.','https://www.youtube.com/embed/dbY9ruOBxFE?autoplay=true','https://i.imgur.com//LKs7Zna.jpeg'),(17,'Vicky e a Musa',NULL,'A menina tem estado triste, pois sua melhor amiga Luara passou a ignorá-la após a morte da mãe durante a pandemia da Covid-19. Unha e carne no passado, as duas jovens, que moram no mesmo bairro e estudam na mesma turma, não se reconhecem mais, e o círculo de amizade de ambas acaba se rompendo.','https://www.youtube.com/embed/xDyUGExaBww?autoplay=true','https://i.imgur.com//WVuZTI9.jpeg'),(18,'Família Paraíso',NULL,'Ao perder seu antigo carro, Leleco sai em busca de qualquer alternativa para conseguir dinheiro, até arrumar um emprego na Casa Paraíso, uma instituição voltada para o repouso de pessoas na terceira idade.','https://www.youtube.com/embed/LZnlRppLZvM?autoplay=true','https://i.imgur.com//YKf3nyq.jpeg'),(19,'Ilha das Flores',NULL,'Um tomate é plantado, colhido, transportado e vendido num supermercado, mas apodrece e acaba no lixo. O filme segue-o até seu verdadeiro final, tudo para deixar clara a diferença que existe entre tomates, porcos e seres humanos.','https://www.youtube.com/embed/Iy4AGLrEqEA?autoplay=true','https://i.imgur.com//CcQJiCs.jpeg'),(20,'Cabra Marcado para Morrer',NULL,'No início dos anos 1960, João Pedro Teixeira é assassinado a mando dos latifundiários da região. Eduardo Coutinho ruma logo depois para a região a fim de fazer um filme sobre esse crime cometido contra o líder camponês. No entanto, a repressão dos militares no poder após o golpe de 1964 interrompe as filmagens. Cerca de 17 anos depois, o cineasta vai atrás de Elizabeth Teixeira, viúva de João Pedro, obrigada a viver se escondendo desde então.','https://www.youtube.com/embed/VW-q2ZYDE9k?autoplay=true','https://i.imgur.com//Z82rfiI.jpeg'),(21,'Notícias de uma Guerra Particular',NULL,'Baseado em entrevistas com personagens envolvidos na rotina do tráfico, o filme contrapõe as falas de criminosos, policiais e moradores do morro Dona Marta, Rio de Janeiro, e debate a forma como a sociedade lida com a violência.','https://www.youtube.com/embed/kBNIU3n4BDE?autoplay=true','https://i.imgur.com//6mu1zvu.jpeg'),(22,'Pátria Educadora',NULL,'Trata-se de lema com duplo significado. Ao bradarmos “BRASIL, PÁTRIA EDUCADORA” estamos dizendo que a educação será a prioridade das prioridades, mas também que devemos buscar, em todas as ações do governo, um sentido formador, uma prática cidadã, um compromisso de ética e um sentimento republicano.\"','https://www.youtube.com/embed/ViZuLQFx-Q0?autoplay=true','https://i.imgur.com//fUK5HBS.jpeg'),(23,'1964 - O Brasil entre armas e livros',NULL,'Segundo a Brasil Paralelo, o filme apresenta uma perspectiva diferente sobre a ditadura militar brasileira, que ocorreu entre 1964 e 1985, com a alegada promessa de \"revelar uma verdade, até então, escondida\". Notavelmente, o filme defende a existência de uma ameaça comunista no Brasil.','https://www.youtube.com/embed/2IIfJktM85o?autoplay=true','https://i.imgur.com//kL2DMJ2.jpeg');
/*!40000 ALTER TABLE `reproducao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `moderador` tinyint DEFAULT '0',
  `genero` varchar(45) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `premium` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'conrado',NULL,NULL,0,NULL,NULL,0),(2,'asdasd','dadadda','123333',0,'feminino','2000-12-10',0),(3,'stella','stella@sa','789',0,'feminino	','2000-03-10',0),(4,'wiliam','wil@12.com','456',0,'masculino','2005-01-28',0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-06 16:33:15
