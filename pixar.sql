-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: pixar
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apariciones`
--

DROP TABLE IF EXISTS `apariciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apariciones` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdPersonaje` int(11) NOT NULL,
  `IdPelicula` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fkPersonaje_idx` (`IdPersonaje`),
  KEY `fkPelicula_idx` (`IdPelicula`),
  CONSTRAINT `fkPelicula` FOREIGN KEY (`IdPelicula`) REFERENCES `pelicula` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkPersonaje` FOREIGN KEY (`IdPersonaje`) REFERENCES `personaje` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apariciones`
--

LOCK TABLES `apariciones` WRITE;
/*!40000 ALTER TABLE `apariciones` DISABLE KEYS */;
INSERT INTO `apariciones` VALUES (1,1,20),(2,2,20),(3,3,20),(4,4,20),(5,5,20),(6,6,20),(7,7,19),(8,8,19),(9,9,19),(10,10,19),(11,11,19),(12,12,18),(13,13,18),(14,14,18),(15,15,18),(16,16,17),(17,17,17),(18,18,17),(19,19,16),(20,20,16),(21,21,16),(22,22,16),(23,23,15),(24,24,15),(25,25,15),(26,26,15),(27,27,15),(28,28,15),(29,29,14),(30,30,14),(31,31,14),(32,32,14),(33,33,13),(34,34,13),(35,35,13),(36,36,13),(41,37,12),(42,38,12),(43,39,12),(44,40,12),(45,41,11),(46,42,11),(47,43,11),(48,44,11),(49,45,11),(50,46,10),(51,47,10),(52,48,10),(53,49,10),(54,50,10),(55,51,9),(56,52,9),(57,53,9),(58,54,8),(59,55,8),(60,56,8),(61,57,8),(62,58,7),(63,59,7),(64,60,7),(65,61,7),(66,62,6),(67,63,6),(68,64,6),(69,65,5),(70,66,5),(71,67,5),(72,68,5),(73,69,4),(74,70,4),(75,71,4),(76,72,3),(77,73,3),(78,74,3),(79,75,3),(80,76,2),(81,77,2),(82,78,2),(83,79,2),(84,80,2),(85,81,1),(86,82,1),(87,83,1),(93,1,6),(94,2,6),(95,3,6),(96,4,6),(97,5,6),(98,6,6),(99,12,7),(100,12,12),(101,16,5),(102,29,4),(103,30,4),(104,31,4),(105,41,1),(106,41,2),(107,41,3),(108,42,1),(109,42,3),(110,45,1),(111,45,3),(112,58,12),(113,58,18),(114,59,7),(115,59,12),(116,60,7),(117,60,12),(118,61,7),(119,61,12),(120,63,20),(121,65,17),(122,66,17),(123,67,17),(124,71,14),(125,72,11),(126,73,11),(127,74,1),(128,74,11),(129,76,3),(130,80,3),(131,81,3),(132,81,11),(133,82,3),(134,82,11),(135,82,4),(136,83,3),(137,83,11);
/*!40000 ALTER TABLE `apariciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Teatrales'),(2,'Animaciones de Cars'),(3,'Animaciones de Toy Story'),(4,'Entretenimiento en Casa');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cortometraje`
--

DROP TABLE IF EXISTS `cortometraje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cortometraje` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Descripcion` text,
  `IdCategoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fkCategoria_idx` (`IdCategoria`),
  CONSTRAINT `fkCategoria` FOREIGN KEY (`IdCategoria`) REFERENCES `categoria` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cortometraje`
--

LOCK TABLES `cortometraje` WRITE;
/*!40000 ALTER TABLE `cortometraje` DISABLE KEYS */;
INSERT INTO `cortometraje` VALUES (1,'Bao','\"Bao\" cuenta la historia de una madre con el s??ndrome del nido vac??o que encontrar?? una segunda oportunidad con un panecillo t??pico de la comida asi??tica. Cortometraje de Pixar que se proyect?? en cines junto a \"Los Incre??bles 2\". ',1),(2,'Piper','Sigue la historia de un peque??o p??jaro, el cual, hambriento, decide enfrentarse a su mayor miedo: el agua. Acompa???? a \"Buscando a Dory\" en las salas de cine. ',1),(3,'Lifted','Un joven extraterrestre pone a prueba la paciencia de su instructor, cada vez m??s cansado, mientras trata de abducir a un granjero inocente y adormilado. Acompa???? a Ratatouille (2007) en su estreno en cines.',1),(4,'Tokio Mate','Mate va a Tokio y termina siendo desafiado a una carrera de campeonato por las calles, en la cual el ganador ser?? coronado \"Rey del derrape\". Acompa???? a Bolt (2008) en su estreno en cines.',2),(5,'Air Mater','Cortometraje derivado de Cars 2, que acompa??a al film en su lanzamiento en DVD/Blu-Ray. Est?? protagonizado por Mate, que despu??s de ver a varios aviones intentar?? aprender a volar por s?? mismo.',2),(6,'Peque??o Gran Buzz','Buzz Lightyear se queda olvidado en un restaurante de comida r??pida al ser confundido con la versi??n del propio Buzz que viene de regalo en el men?? infantil. Mientras los juguetes de Bonnie soportan a este imitador de 7 cm de alto que emite un molesto zumbido, el Buzz real asiste a un grupo de terapia de apoyo que hay en el propio restaurante para todos los juguetes desechados y olvidados all??. Woody y la pandilla idean una manera de rescatar a su amigo, mientras que Buzz trata de escapar de esa reuni??n de psicoterapia de juguetes para poder reunirse con sus amigos. Cortometraje derivado de la franquicia \"Toy Story\", estrenado en cines junto a la pel??cula \"Los Muppets\", en noviembre de 2011.',3),(7,'Toy Story de Terror','Los entra??ables personajes de \'Toy Story\' vuelven a las andadas con este especial televisivo de Halloween, de unos veinte minutos de duraci??n. Era un d??a como cualquier otro cuando Boonie y su madre deciden ir a visitar a la abuela, y Woody, Jessie y Buzz Lightyear van situados en el maletero del coche durante el viaje. Pero pasa algo con lo que nadie hab??a contado: una de las ruedas del coche se pincha, y los protagonistas se ven obligados a pasar la noche en un motel de carretera, donde se ver??n amenazados por una presencia que no pueden identificar.',3),(8,'Jack-Jack ataca','Los espectadores de ???Los Incre??bles??? ya saben que la ni??era de Jack-Jack empez?? a experimentar dificultades con ??l poco despu??s de colgar el tel??fono a su madre. Este corto contin??a la historia a partir de ese fat??dico momento. Acompa???? a Los Incre??bles (2004) en su lanzamiento en DVD.',4),(9,'Tu amiga la rata','En la historia de ???Your Friend the Rat???, Remy y su hermano Emille dedican una clase did??ctica en la que hablan sobre el comportamiento de las ratas a lo largo de la historia, en un intento de persuadir a los humanos y cambiar el punto de vista que tienen sobre estos roedores. Acompa???? a Ratatouille (2006) en su lanzamiento en DVD.',4),(10,'La misi??n especial de Dug','Alpha, el severo d??berman al servicio de Charles Muntz, encomienda una misi??n al patoso Dug el d??a de su cumplea??os. Acompa???? a Up (2009) en su lanzamiento en DVD.',4),(11,'La leyenda de Mor???du','Cortometraje incluido en el DVD/Blu-Ray de \"Brave\", que permite profundizar en la leyenda de Mor???du, contada por la bruja exc??ntrica que lo transform??. ',4),(12,'El coche nuevo de Mike','Mike Wazoski est?? obsesionado con su nuevo coche de seis ruedas e insiste en presumir de ??l ante su amigo, Sulley. Por desgracia para Mike, todo lo que le puede ir mal, le va a ir mal.',4);
/*!40000 ALTER TABLE `cortometraje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelicula` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `NombreOriginal` varchar(100) DEFAULT NULL,
  `Descripci??n` text,
  `FechaEstreno` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
INSERT INTO `pelicula` VALUES (1,'Toy Story','Toy Story	','Cuando el peque??o Andy se va de su habitaci??n, sus juguetes cobran vida y forman toda una sociedad bajo el liderazgo de su mu??eco favorito, Woody el vaquero. El chico tambi??n ignora que cada cumplea??os es un momento de angustia para sus juguetes, debido a que se sienten realmente aterrados al pensar que pueden ser suplantados por unos nuevos. Woody es el ??nico juguete al que esto no le preocupa, pues cree asegurado su estatus de mejor amigo de Andy.','1995-11-22'),(2,'Bichos: Una aventura en miniatura','A Bug\'s Life','Flick vive en una colonia de hormigas que, tras el invierno, es asaltada por un grupo de saltamontes. ??stos cada a??o acuden al hormiguero y se llevan parte de la comida que recogen de cara a la ??poca de fr??o, como parte de un trato muy antiguo y que las hormigas, por miedo, a la otra parte, no se permiten transgredir.','1998-11-25'),(3,'Toy Story 2','Toy Story 2','Woody, el vaquero con andar particular, sigue siendo el juguete favorito de Andy, incluso aunque hoy comparta su amistad con Buzz. En su papel de jefe de la banda, Woody protege y tranquiliza a todos los juguetes de la habitaci??n porque todav??a permanecen asustados ante la posibilidad de ser reemplazados por otros m??s novedosos tarde o temprano.','1999-11-24'),(4,'Monsters, Inc.','Monsters, Inc.','Monstru??polis es una peque??a ciudad poblada por monstruos, donde la principal fuente de energ??a proviene de los gritos de los ni??os. Monstruos S.A. es la mayor f??brica de tratamiento de gritos de la ciudad. A trav??s del impresionante n??mero de puertas de armarios con que cuenta la f??brica, un equipo de monstruos de ??lite entra en el mundo de los humanos para asustar a los ni??os durante la noche y recolectar sus alaridos. El Asustador de ??lite m??s reputado de Monstruos S.A. es James P. Sullivan, alias ???Sully???, un monstruo cornudo de 2,40 metros de altura y pelaje azul verdoso con motas moradas. Una noche, mientras se encuentra en la Estaci??n de Sustos, se percata de que una de las puertas no se ha cerrado correctamente. Para verificar que todo est?? en orden, Sully la abre, dejando entrar sin querer a Boo, una ni??a humana, en el mundo de los monstruos.','2001-11-02'),(5,'Buscando a Nemo','Finding Nemo','En las aguas tropicales de la Gran Barrera de Coral, un pez payaso llamado Marlin lleva una apacible existencia junto a su ??nico hijo, Nemo. Temeroso de los oc??anos y sus imprevisibles peligros, hace todo lo que puede para proteger a su hijo. Pero como todos los pececitos de su edad, Nemo sue??a con explorar los misteriosos arrecifes de coral. ','2003-05-30'),(6,'Los Incre??bles','The Incredibles','Bob Paar era Mr. Incre??ble, uno de los superh??roes m??s importantes del mundo, la persona a la que todos acud??an cuando necesitaban ayuda y la que se encargaba de frenar las intenciones de los villanos m??s peligrosos del mundo.','2004-11-05'),(7,'Cars','Cars','Un peque??o y nuevo coche de carreras, llamado Rayo McQueen, se est?? preparando para ser un experto corredor y convertirse en uno de los autom??viles m??s respetados en el panorama internacional. Un d??a toma la decisi??n de cambiar por completo su vida y se dirige a Radiator Springs, un peque??o y des??rtico pueblo donde hace nuevos amigos y comprender?? el verdadero sentido de su existencia. All?? entablar?? una buena relaci??n con el Porsche Sally, Doc Hudson y Mater, una vieja camioneta que le har?? comprender que hay cosas m??s importantes que los trofeos y la fama, algo que sin duda hab??a sido el prop??sito del protagonista desde que se comprometi?? a participar en el mundo de las carreras. ??Podr?? Rayo McQueen dejar de lado todas estas cosas y centrarse en lo que de verdad merece la pena?','2006-06-09'),(8,'Ratatouille','Ratatouille','Remy es una rata que vive en el coraz??n de Par??s con sus amigos y familia de roedores. Sin embargo, y a diferencia de sus compa??eros, tiene un sue??o bastante peculiar. Quiere ser un cocinero profesional. Conseguirlo ser?? dif??cil pues no cuenta con el apoyo de su familia, ni de los restaurantes, que desprecian a los roedores con todas sus ganas, m??s a??n si el p??blico se enterara que su plato fue cocinado por una rata. A pesar de tener todo en su contra, Remy, se cuela sin ser visto en un restaurante de cinco estrellas para mejorar los platos que all?? elaboran. Linguini, un joven empleado reci??n llegado al lujoso restaurante le descubre. Sin embargo para su sorpresa, en vez de rechazarle y echarlo de la cocina, lo adopta como ayudante. El puesto del joven pende de un hilo. No cuenta con buenas dotes culinarias, por ello, llega a un acuerdo con la rata. Ella cocinar?? en secreto indic??ndole a ??l como hacerlo. Su plan es convertirse juntos en el mejor chef de Par??s ??Lo conseguir??n?','2007-06-29'),(9,'WALL???E','WALL???E','700 a??os atr??s, el planeta Tierra tuvo que ser evacuado debido a una enorme acumulaci??n de basura, encomendando a una serie de robots la misi??n de limpiarla.','2008-06-27'),(10,'Up: una aventura de altura ','Up','Cuando amenazan con demoler su vivienda para construir un establecimiento, Carl Fredricksen, un antiguo vendedor de globos de 78 a??os, decide que ha llegado el momento de hacer realidad el sue??o que siempre hab??a compartido con su ya difunta esposa Ellie: explorar Sudam??rica a lo largo y a lo ancho del continente. Sin pens??rselo mucho, el anciano ata su casa a miles de globos y emprende un viaje a trav??s del aire.','2009-05-29'),(11,'Toy Story 3','Toy Story 3','Los creadores de las famos??simas pel??culas de Toy Story vuelven a abrir el ba??l de los juguetes e invitan a los espectadores a volver a encontrarse con el mundo deliciosamente m??gico de Woody y Buzz cuando Andy se dispone a ir a la universidad. Desamparada, la banda de juguetes m??s famosa del mundo se encuentra... ??en la guarder??a! ??Los ni??os desatados y sus peque??os dedos capaces de arrancarlo todo son una verdadera amenaza para nuestros amigos! Urge trazar un plan para escapar de all?? lo m??s r??pido posible. Nuevos miembros se unen a la \"gran evasi??n\", entre ellos el eterno seductor y soltero Ken, el amigo de Barbie, un erizo actor llamado Larosse y un oso rosa con olor a fresa llamado Lotso.','2010-06-18'),(12,'Cars 2: una nueva aventura sobre ruedas','Cars 2','El m??s veloz de los coches carrera, Rayo McQueen (doblado en su versi??n original por Owen Wilson), y su inseparable amigo Mate (Larry The Cable Guy) cruzan el oc??ano para hacer realidad el nuevo sue??o del coche rojo: ganar en el primer Grand Prix Mundial y coronarse como el veh??culo de carreras m??s veloz del mundo. ','2011-06-24'),(13,'Valiente','Brave','\'Brave (Indomable)\' es una vuelta de tuerca sobre el mundo cl??sico de las cursis damiselas, los valientes caballeros y dem??s parafernalia medieval. ','2012-06-22'),(14,'Monsters University','Monsters University','En 2002 pudimos disfrutar de la divertida pel??cula \'Monstruos, S.A.\', que nos contaba c??mo una empresa se encargaba de asustar a los ni??os mediante unos imponentes monstruos. ','2013-06-21'),(15,'Intensa-Mente','Inside out','El paso del tiempo puede ser un camino complicado. Tambi??n lo es para la joven Riley Anderson cuando, con s??lo 11 a??os, tiene que dejar atr??s su vida en el Medio Oeste y mudarse a San Francisco. ','2015-06-19'),(16,'Un Gran Dinosaurio','The Good Dinosaur','??Qu?? hubiera pasado si el asteroide que cambi?? para siempre la vida en la Tierra no hubiese impactado en nuestro planeta? ??Qu?? pasar??a si los dinosaurios gigantes nunca se hubiesen extinguido? El viaje de Arlo nos traslada a un mundo donde el asteroide que termin?? de forma dram??tica con los dinosaurios, pasa de largo. La consecuencia de este colosal cambio es que ahora los dinosaurios y los humanos conviven juntos en la Tierra. En este hipot??tico mundo, los animales m??s longevos del planeta son los que cultivan las tierras y quienes hacen pastar el ganado, para as?? conseguir su alimento. Adem??s, en este supuesto planeta, son los dinosaurios los que hablan y los humanos quienes rugen y a??llan.','2015-11-25'),(17,'Buscando a Dory','Finding Dory','Dory, la simp??tica pez azul con serios problemas de memoria es la protagonista de esta nueva aventura en el oc??ano. En su nueva vida en el arrecife con Marlin y Nemo, a Dory repentinamente le llegan a la memoria recuerdos de su infancia. Durante un sue??o, rememorar?? detalles de la vida con su familia, y Nemo la escuchar?? susurrar: ???La joya de Morro Bay, California???. A partir de esta pista sobre sus or??genes, la olvidadiza pez azul decidir?? emprender un viaje en busca de sus seres queridos. ??El problema? Pues que la corta memoria de Dory no facilitar?? mucho la investigaci??n...','2016-06-17'),(18,'Cars 3','Cars 3','Rayo McQueen sigue siendo el mejor coche de carreras del mundo, pero ahora que es uno de los m??s veteranos del circuito, debe demostrar a todo el mundo que a??n puede ganar una gran carrera y que no deber??a jubilarse. En esta ocasi??n, el famoso b??lido de carreras tendr?? que enfrentarse a una nueva generaci??n de corredores m??s j??venes, potentes y veloces, que amenaza con cambiar el deporte de su vida. Entre ellos est?? el competitivo y revolucionario Jackson Storm, una de las nuevas promesas del automovilismo que no se lo pondr?? nada f??cil. ','2017-06-16'),(19,'Coco','Coco','En un peque??o y alegre pueblo mexicano vive Miguel, un ni??o de 12 a??os que pertenece a una familia de zapateros, en la que la m??sica est?? prohibida. Durante generaciones, los Rivera han censurado la m??sica porque creen que hay una maldici??n en ella. Y es que, hace muchos a??os, su bisabuelo abandon?? a su mujer para seguir su sue??o de ser m??sico, y por eso la m??sica se declar?? muerta para todos ellos. ','2017-10-27'),(20,'Los increibles 2','Incredibles 2','Vuelve la familia de superh??roes formada por M??ster Incre??ble y Elastigirl junto a sus tres hijos Violet, Dash y Jack-Jack. Esta vez es Helen Parr, la madre del clan, la que debe hacerse cargo del sustento familiar ya que cuenta con una mejor imagen p??blica que su esposo. A Bob no le quedar?? otra opci??n que criar y lidiar con sus hijos, la adolescente Violet, el jovencito Dash y el beb?? Jack-Jack, que comenzar?? a descubrir sus emergentes superpoderes. Cuando surja un nuevo villano, todos ellos junto a Frozone deber??n encontrar una manera de trabajar juntos de nuevo, cosa que ser?? m??s f??cil en la teor??a que en la pr??ctica, a pesar de que todos sean incre??bles.','2018-06-15'),(21,'Toy Story 4','Toy Story 4','Woody siempre ha tenido claro cu??l es su labor en el mundo: cuidar a su due??o, ya sea Andy o Bonnie. Sin embargo, Woody descubrir?? lo grande que puede ser el mundo para un juguete cuando el juguete Forky se convierta en su nuevo compa??ero de habitaci??n. Los juguetes se embarcar??n en una aventura que no olvidar??n jam??s durante un viaje por carretera.','2019-06-11');
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personaje`
--

DROP TABLE IF EXISTS `personaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personaje` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personaje`
--

LOCK TABLES `personaje` WRITE;
/*!40000 ALTER TABLE `personaje` DISABLE KEYS */;
INSERT INTO `personaje` VALUES (1,'Helen Parr'),(2,'Bob Parr'),(3,'Jack-Jack Parr'),(4,'Violet Parr'),(5,'Dash Parr'),(6,'Edna Moda'),(7,'Miguel'),(8,'H??ctor'),(9,'Dante'),(10,'Mam?? Coco'),(11,'Mam?? Imelda'),(12,'Rayo McQueen'),(13,'Cruz Ramirez'),(14,'Jackson Storm'),(15,'Smokey'),(16,'Dory'),(17,'Hank'),(18,'Bailey'),(19,'Arlo'),(20,'Spot'),(21,'Poppa'),(22,'Momma'),(23,'Alegr??a'),(24,'Tristeza'),(25,'Enojo'),(26,'Disgusto'),(27,'Miedo'),(28,'Riley Andersen'),(29,'Mike Wazowski'),(30,'Sulley'),(31,'Randy Boggs'),(32,'Art'),(33,'Merida'),(34,'Reina Elinor'),(35,'Rey Fergus'),(36,'Triplets'),(37,'Francesco Bernoulli '),(38,'Finn McMissile'),(39,'Holley Shiftwell'),(40,'Professor Z'),(41,'Woody'),(42,'Buzz Lightyear'),(43,'Lotso'),(44,'Ken'),(45,'Andy'),(46,'Carl Fredricksen'),(47,'Russell'),(48,'Dug'),(49,'Kevin'),(50,'Ellie'),(51,'WALL???E'),(52,'EVE'),(53,'M-O'),(54,'Remy'),(55,'Auguste Gusteau'),(56,'Linguini'),(57,'Anton Ego'),(58,'Doc Hudson'),(59,'Luigi & Guido'),(60,'Fillmore'),(61,'Sheriff'),(62,'Syndrome'),(63,'Frozone'),(64,'Gilbert Huph'),(65,'Nemo'),(66,'Marlin'),(67,'Gill'),(68,'Nigel'),(69,'Boo'),(70,'Celia'),(71,'Yeti'),(72,'Jessie'),(73,'Bullseye'),(74,'Sr. Cara de Papa'),(75,'Al'),(76,'Flik'),(77,'Princesa Atta'),(78,'Dot'),(79,'Francis'),(80,'Heimlich'),(81,'Hamm'),(82,'Rex'),(83,'Slinky');
/*!40000 ALTER TABLE `personaje` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-02 11:08:19
