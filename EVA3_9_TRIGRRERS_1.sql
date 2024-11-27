CREATE DEFINER=`root`@`localhost` TRIGGER `pruebas_BEFORE_INSERT` BEFORE INSERT ON `pruebas` FOR EACH ROW BEGIN
	SET new.nombre = genera_rfc2();
END