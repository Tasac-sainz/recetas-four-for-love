CREATE DATABASE  IF NOT EXISTS `recipessapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `recipessapp`;
-- MySQL dump 10.13  Distrib 8.0.45, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: recipessapp
-- ------------------------------------------------------
-- Server version	9.5.0

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
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '2adb2964-b687-11f0-94c6-4a55cd04ab4d:1-202';

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `ingredients` longtext NOT NULL,
  `instructions` longtext NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `fk_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user` (`fk_user`),
  CONSTRAINT `fk_user` FOREIGN KEY (`fk_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (1,'Pollo al curry a mi estilo','5 contramuslos deshuesados, 3 cebollas, curry en polvo, cayena en polvo, 1/2 yogurt natural, agua, aceite, sal y pimienta','Salpimentar los trozos de pollo y dorarlos en una olla o sartén profunda,retirar una vez dorados. Cortar en trocitos pequeños las cebollas y sofreír hasta que estén doraditas y transparentes y la misma olla/sartén que doramos el pollo, cuando estén doradas, añadir sal, curry al gusto y cayena molida al gusto, remover e incoporar agua hasta cubrir la cebolla. Dejar que se cocine hasta que evapore el agua y quede con la densidad adecuada para una salsa. Triturar la cebolla hasta alcanzar una textura melosa pero no excesivamente líquida en la salsa, probar e incorporar más curry o picante y si ha quedado demasiado picante, echar medio yogurt natural para suavizar el sabor y aportar cremosidad. Incoporar en la olla la salsa y el el pollo y dejar cocinar a fuego medio-bajo durante 10 minutos',NULL,5),(2,'Dorada a la sal','1 dorada de 500gr aproximadamente, 1 kilo de sal gruesa para cocinar','Precalentar el horno a 200º, desescamamos la dorada y la secamos bien con papel de cocina. En la fuente que vayamos a utilizar para cocinar, ponemos una cama de sal gorda y colocamos encima la dorada, cubriéndola completamente con sal gorda, a excepción del ojo, le echamos unas pocas gotas de agua por encima para compactar la sal. Cocínala entre 15 y 20 minutos, si al sacar la dorada, el ojo está turbio, es que está hecha. Sácala del horno y deja reposar 5 minutos. Retira la sal con una espátula metálica y ¡a disfrutar!',NULL,5),(3,'Solomillo de cerdo a la mostaza','1 solomillo de cerdo de unos 500gr, sal, pimienta, mostaza de dijon','Retira la grasa del solomillo y salpimienta por ambos lados, embadurna toda la pieza generosamente con mostaza de dijon. Precalienta la airfryer 5 minutos a 180º. Pasado el tiempo, introduce el solomillo de cerdo y cocina a 180º unos 15 minutos si quieres que quede rosadito por dentro. Pasado el tiempo, haz un corte central para revisar si se ha cocinado a tu gusto, si le falta, introduce 5 minutos más',NULL,5),(4,'Carrilleras de cerdo en salsa de chocolate','4 carrileras de cerdo ibérico, 200gr de cebolla, 200gr de zanahoria, 3 dientes de ajo, 1 tomate maduro, 350ml de vino tinto, 150ml de caldo de carne, 1 hoja de laurel, 1 rama de romero fresco, 40gr de chocolate negro -mínimo 70% cacao-, 15gr de harina, aceite de oliva, sal y pimienta','Limpiamos de grasa las carrilleras, salpimentamos y pasamos por harina, sacudiendo el exceso. Las marcamos en una sartén a fuego fuerte, volteando por todos lados para que queden selladas y reservamos. En una cazuela, calentamos un fondo de aceite de oliva y pochamos las verduras: ajo picado, cebolla y zanahoria cortadas pequeñas y tomate. Salpimentamos al gusto y cuando estén tiernas, tras unos 10 minutos, añadimos las carrilleras, el vino tinto y el caldo. Cocemos a fuego suave, con tapa, durante una hora. Transcurrido el tiempo, añadimos la hoja de laurel, la rama de romero y el chocolate troceado. Cocemos durante 30 minutos más, con tapa a fuego lento. Comprobamos si las carrilleras están tiernas antes de retirar de la cazuela. Trituramos la salsa hasta alcanzar la textura deseada, incorporamos de nuevo las carrilleras y damos un último hervor antes de servir',NULL,5),(5,'Tortilla de patatas-AirFryer','400gr de patatas, 20ml de aceite, 4 huevos, sal','Pelamos y cortamos las patatas en láminas, las disponemos en un bol junto con la sal y el aceite y mezclamos. Precalentamos la freidora de aire y disponemos las patatas en la cubeta. Cocinamos a 200º durante 25 minutos, removiendo de vez en cuando. En un bol batimos los huevos con un poco de sal y añadimos las patatas una vez estén listas. Removemos hasta integrar y reservamos. Forramos un molde redondo con papel de horno y disponemos la mezcla anterior. Cocinamos a 180º durante 15 minutos. Sacamos la tortilla, desmoldamos, le damos la vuelta y volvemos a colocar sobre la cubeta. Cocinamos 5-10 minutos más','2025-11-25 20:08:28',5),(6,'Tacos de carne picada con queso','1 cebolla grande picada, 450gr de carne picada, 1 lata de tomate frito, 1 lata de frijoles negros, 1 cucharada de condimento para tacos, sal, 2 cucharadas de queso cheddar rallado, 8 tortillas de trigo pequeñas, crema agria','En una sartén a fuego medio-alto, cocinamos la cebolla hasta que esté suave, unos 6 minutos. Agregamos la carne y cocinamos hasta que deje de estar rosada, aproximadamente 5-7 minutos, agregamos el tomate, los frijoles y el condimento para tacos; sazonamos con sal y mezclamos todo hasta integrarlo bien. Agregamos el queso y removemos hasta que se derrita. Ponemos la mezcla en las tortillas y, opcionalmente, los pasamos por la airefryer para que queden crujientes. Servir con nata agria',NULL,5),(7,'Pastel de verduras en Airfryer','las verduras que queramos (brócoli, guisantes, calabacín, cebolla, etc), tres huevos, queso mozarella rallado, aceite, sal y especias al gusto','Precalentamos la freidora de aire 5 minutos a 180º. Picamos las verduras en taquitos pequeños, mezclamos en un bol con sal y aceite y las colocamos en un molde apto para airfyer. Cocinamos 20 minutos a 180º, sacamos e incorporamos los huevos batidos e integramos. Cocinamos otros 10 minutos y removemos; comprobamos si ha quedado bien cuajado y añadimos el tiempo que necesite. Añadimos el queso por encima y cocinamos 5 minutos más',NULL,5),(8,'Quesadilla express con batata cocida','tortillas de trigo, jamón cocido o pavo, queso gouda y una batata','Calienta en una sarten a fuego medio la tortilla y añade el jamón y el queso, dobla la tortita y deja que se funda el queso. Dale la vuelta. Mientras, pela y corta en rodajas medianas la batata, mezcla con un poco de aceite y sal en un recipiente apto para microondas. Tapa con film transparente y haz algunos agujeros con un cuchillo en el film. Mete al microondas y cocina por 4 minutos. Listo!','2025-11-26 09:47:39',5),(9,'Barritas de avena','1 taza de copos de avena, ¼ de taza de chips de  chocolate, ¼ de taza de Almendras, ¼ de taza de Cacahuetes, 3 cucharadas colmadas de miel, 4 cucharadas colmadas de crema de cacahuete','En un bol, mezcla todos los ingredientes secos: la avena, las chips de chocolate, las almendras y los cacahuetes (o los frutos secos que hayas elegido).Añade los ingredientes húmedos: la miel y la crema de cacahuete. Mezcla todos los ingredientes a mano hasta que estén bien combinados. Forra un molde pequeño con film transparente. Vierte la mezcla en el molde y presiónala hacia abajo para que quede uniforme. Refrigera durante media hora. Una vez frías, corta las barritas en tiras. Puedes guardar las barritas en un recipiente o envolverlas individualmente.',NULL,NULL),(10,'Nata agria','500 gr de nata para montar, 30 gr de yogurt natural','Echamos la nata en un tarro, echamos el yogurt y mezclamos. Dejar a temperatura ambiente (fuera de la nevera) de 24 a 36h y habrá fermentado, convirtiéndose en cream fresh o nata agria y  LISTO!',NULL,5),(11,'Tosta con aguacate y huevo a la Jack','1 rebanada de pan, 1 huevo, 1 aguacate, sal en escamas','Pon el huevo a cocer y sácalo cuando lleve aproximadamente 3 minutos hirviendo. Machaca el aguacate hasta que quede una crema y úntala en el pan. Añade el huevo poché y esparce sal al gusto, ¡bon apetit!',NULL,7),(12,'Quiche de jamón','1 lámina de masa quebrada, 4 huevos, 200ml de nata líquida, 200gr queso gouda o similar, 150gr de jamón york, sal y pimienta.','Extendemos la masa quebrada sobre un molde desmoldable de 22 cm de diámetro y la acomodamos a la base y laterales, presionando ligeramente para que el borde acanalado quede marcado. Retiramos el sobrante de la masa. Cubrimos con papel sulfurizado y peso de hornear y la cocemos al horno a 180ºC durante 20 minutos colocando el molde en la parte inferior (para que la base no quede cruda).\n\nMientras tanto cortamos el jamón en tacos y rallamos el queso (o los quesos si utilizamos de varios tipos). En un cuenco amplio batimos los huevos, agregamos la nata líquida y removemos hasta obtener una mezcla homogénea. Salpimentamos ligeramente, con cuidado de no pasarnos y teniendo en cuenta que el queso y el jamón ya contienen sal.\n\nCuando la base de la quiche está lista, la sacamos del horno y retiramos el peso de hornear. Atemperamos antes de rellenar con el jamón y el queso y regar con la mezcla del huevo y la nata. Repartimos por toda la superficie y horneamos de nuevo a 180ºC durante unos 30 minutos o hasta que la superficie se dore. Dejamos reposar unos minutos antes de desmoldar y servir.',NULL,4),(13,'Macarrones con tomate','Macarrones, tomate frito y orégano','1.Hervir la pasta\n2. Añadir tomate\n3. Añadir orégano\n\n¡Disfrutar!',NULL,7);
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'ania','ania@gmail.com','$2b$10$yIltrZz.SFyTcVheY0fzZuEjx3DN6aL6PBMGdxZbmQgcE6y4z1hQq'),(4,'leda','leda.dicroce@gmail.com','$2b$10$uew/YeyuSUUM9e7lnDuInOTGl4Eh4Ph9Ha/f/eD.NJLCrPt8h8uQ.'),(5,'tania','tssainzdeaja@gmail.com','$2b$10$lZFB7skCWHOztIih4JXmWONhnth4kBGGkwTPjEJfQx4yoX9QkYh.a'),(7,'julieta','julieta@gmail.com','$2b$10$SaeT6I2MbG5tou.cHn2xqekcWuYsleGPI2Ieiij8M9G.rmdeiQfhy');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-06 17:15:43
