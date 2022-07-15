CREATE TABLE `diarist` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `diarist` VALUES (1,'vithoria','75824153687'),(2,'theo','75826341852'),(3,'renan','75869412385'),(4,'rafael','75385269841'),(5,'henrique','75386974152'),(6,'william','74851938675'),(7,'thailan','72894637185'),(8,'jose','72986453851'),(9,'joao','42586975348'),(10,'pedro','74813785168');
CREATE TABLE `responsible` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `responsible` VALUES (1,'antonio','04758809275'),(2,'alex','35758924678'),(3,'bruna','23467874801'),(4,'felipe','26295860316'),(5,'nico','38573902516'),(6,'bruno','36495862473'),(7,'diego','48523975168'),(8,'fabi','82467391582'),(9,'leo','74195386295'),(10,'junior','75395182645');
;
CREATE TABLE `residence` (
  `id` int NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `complement` varchar(45) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `responsible_id` int NOT NULL,
  PRIMARY KEY (`id`,`responsible_id`),
  FOREIGN KEY (`responsible_id`) REFERENCES `responsible` (`id`)
);
INSERT INTO `residence` VALUES (1,'ariquemes','setor 11','mario quintana','casa azul','4062','medio',1),(2,'Belo Horizonte','Sé Bela Vista','rua 1','casa preta','5673','pequeno',1),(3,'Belo Horizonte','Cachoeirinha','rua principal','casa amarela','7185','grande',2),(4,'sao paulo','Limão','rua 2','predio','2684','grande',3),(5,'rio de janeiro','Bom Retiro','rua 4','casa grande','3896','pequeno',3),(6,'Belo Horizonte','Norte','rua b','portão preto','8524','grande',3),(7,'rio de janeiro','Consolação','rua d','portão azul','4258','pequeno',4),(8,'sao paulo','Liberdade','rua cora coralina','casa vermelha','7586','grande',5),(9,'Belo Horizonte','Cambuci','rua quarta','com garagem','6958','pequeno',6),(10,'sao paulo','Ermelino Matarazzo','avenida brasil','2 cameras no portão','4375','grande',6),(11,'Belo Horizonte','Butantã Morumbi','rua sao francisco','casa marrom','8451','pequeno',7),(12,'rio de janeiro','Raposo Tavares','rua sao joao','portão vermelho','2589','medio',8),(13,'sao paulo','Rio Pequeno','rua tiradentes','restaurante em frente','7514','grande',9),(14,'Belo Horizonte','Brasilândia','rua amazonas','final do quarterão','7563','pequeno',10),(15,'rio de janeiro','Freguesia','rua parana','casa rosa','1458','pequeno',10);
CREATE TABLE `cleaning` (
  `diarist_id` int NOT NULL,
  `residence_id` int NOT NULL,
  `date` date DEFAULT NULL,
  `price` int DEFAULT NULL,
  `fulfilled` tinyint DEFAULT NULL,
  `received` tinyint DEFAULT NULL,
  `feedback` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`diarist_id`,`residence_id`),
  FOREIGN KEY (`diarist_id`) REFERENCES `diarist` (`id`),
  FOREIGN KEY (`residence_id`) REFERENCES `residence` (`id`)
);
INSERT INTO `cleaning` VALUES (1,2,'2022-07-15',50,0,0,'não apareceu'),(1,15,'2022-04-19',50,1,1,'ótimo'),(2,1,'2021-08-17',100,1,1,'trabalho bem feito'),(2,3,'2021-08-23',150,1,1,'louça mal lavada'),(3,4,'2021-09-30',150,1,1,'casa bem limpa'),(4,4,'2022-10-10',150,0,0,''),(4,5,'2022-06-25',50,1,1,'trabalho bem feito'),(5,6,'2022-07-03',150,1,1,'casa ficou otima'),(6,7,'2022-10-15',50,0,0,''),(6,8,'2022-05-20',150,1,1,'muito bom'),(6,13,'2022-05-25',150,1,1,'não gostei'),(7,8,'2022-12-23',150,0,0,''),(8,8,'2022-06-30',150,1,1,'não gostei do serviço'),(8,14,'2022-02-01',50,1,1,'bom'),(9,9,'2022-07-08',50,1,1,'exelente'),(9,10,'2022-08-15',150,0,0,''),(9,11,'2022-03-28',50,1,1,'trabalho bem feito'),(10,12,'2022-07-15',100,1,1,'perfeito');