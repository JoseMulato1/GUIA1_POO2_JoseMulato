CREATE DATABASE control
USE control

SELECT * FROM 


CREATE TABLE `TIPO_DOCU` (

`CODI_TIPO_DOCU` bigint(64) NOT NULL,

`NOMB_TIPO_DOCU` varchar(50) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_TIPO_DOCU`) ,

UNIQUE INDEX `IDX_TIPO_DOCU` (`CODI_TIPO_DOCU`)

);

INSERT INTO tipo_docu values (1,'Personal','2015-12-20','2016-12-20',1)
INSERT INTO tipo_docu values (2,'Privado','2015-12-30','2016-12-30',1)
INSERT INTO tipo_docu values (3,'Publico','2015-11-20','2016-11-20',1)
SELECT * FROM tipo_docu

CREATE TABLE `UBIC_GEOG` (

`CODI_UBIC_GEOG` bigint(64) NOT NULL,

`NOMB_UBIC_GEOG` varchar(200) NULL,

`CODI_UBIC_GEOG_SUPE` bigint(64) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_UBIC_GEOG`) 

);
INSERT INTO ubic_geog values (1,'Sala 1','1','2014-03-02',null,1)
INSERT INTO ubic_geog values (2,'Sala 2','2','2015-05-06',null,1)
INSERT INTO ubic_geog values (3,'Sala 3','3','2014-05-20',null,1)
INSERT INTO ubic_geog values (4,'Sala 4','4','2016-05-12',null,1)
INSERT INTO ubic_geog values (5,'Sala 5','5','2016-05-16',null,1)

CREATE TABLE `VISI` (

`CODI_VISI` bigint(64) NOT NULL COMMENT 'CODIGO DE LA VISITA',
`CODI_USUA` bigint(64) NULL COMMENT 'USUARIO QUE REGISTRA LA VISITA',
`CODI_PERS` bigint(64) NULL COMMENT 'PERSONA QUE HACE LA VISITA',
`CODI_PERS_VISI` bigint(64) NULL COMMENT 'EMPLEADO QUE RECIBE LA VISITA',
`CODI_UNID_ORGA_VISI` bigint(64) NULL COMMENT 'UNIDAD ORGANIZATIVA QUE RECIBE LA VISITA',
`CODI_TIPO_DOCU` bigint(64) NULL,
`CODI_GAFE` bigint(64) NULL COMMENT 'CODIGO DEL GAFETE QUE LO IDENTIFICA',
`CODI_LUGA_ENTR` bigint(64) NULL COMMENT 'CODIGO DEL LUGAR DE ACCESO A LA VISITA',
`CODI_LUGA_SALI` bigint(64) NULL COMMENT 'CODIGO DEL LUGAR DONDE SALE LA VISITA',
`FECH_HORA_ENTR_VISI` datetime NULL COMMENT 'FECHA Y HORA DE LA ENTRADA DE VISITA',
`FECH_HORA_SALI_VISI` datetime NULL COMMENT 'FECHA Y HORA DE LA SALIDA DE VISITA',
`MOTI_VISI` varchar(255) NULL COMMENT 'MOTIVO DE LA VISITA',
`FECH_ALTA` datetime NULL,
`FECH_BAJA` datetime NULL,
`ESTA` longblob NULL,

PRIMARY KEY (`CODI_VISI`) 

);
select * from gafe_iden
INSERT INTO visi values ('01','1','1','1','1','1','1','1','1','2016-03-02 12:00:00','2016-03-02 12:05:00','investigacion','2016-03-02',null,1)
INSERT INTO visi values ('02','2','2','2','2','2','2','2','2','2016-04-04 01:10:00','2016-04-04 12:20:00','Actividad','2016-04-04',null,1)
INSERT INTO visi values ('03','3','3','3','3','1','3','3','3','2016-05-05 12:30:00','2016-05-05 12:40:00','Actividad','2016-05-05',null,1)
INSERT INTO visi values ('04','4','4','4','4','2','4','4','4','2016-07-07 12:50:00','2016-07-07 12:55:00','investigacion','2016-07-07',null,1)
INSERT INTO visi values ('05','5','5','5','5','1','5','5','5','2016-09-09 01:00:00','2016-09-09 01:10:00','investigacion','2016-09-09',null,1)


select * from usua
select * from pers
select * from tipo_docu

CREATE TABLE `LUGA_ACCE` (

`CODI_LUGA_ACCE` bigint(64) NOT NULL,

`NOMB_LUGA_ACCE` varchar(100) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_LUGA_ACCE`) 

);
INSERT INTO luga_acce values (1,'Pagina 1','2015-03-02',null,1)
INSERT INTO luga_acce values (2,'Pagina 2','2016-08-03',null,1)
INSERT INTO luga_acce values (3,'Pagina 3','2015-09-22',null,1)
INSERT INTO luga_acce values (4,'Pagina 4','2016-12-21',null,1)


CREATE TABLE `EQUI_COMP` (

`CODI_EQUI_COMP` bigint(64) NOT NULL,

`NOMB_EQUI_COM` varchar(100) NULL,

`CODI_LUGA_ACCE` bigint(64) NULL,

`MAC_ADDR_EQUI_COMP` varchar(50) NULL,

`IP_ADDR_EQUI_COMP` varchar(50) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_EQUI_COMP`) 

);

INSERT INTO equi_comp values (1,'HP','1','C0EOA4B5F7','192.168.123.4','2016-04-01',null,1)
INSERT INTO equi_comp values (2,'DELL','1','C0E3A5B5F6','192.168.0.6','2016-02-10',null,1)
INSERT INTO equi_comp values (3,'ASUS','1','C0EOA433F70','192.168.1.1','2016-09-11',null,1)
INSERT INTO equi_comp values (4,'LG','1','C0EOA423F5','192.168.5.0','2016-06-21',null,1)

CREATE TABLE `GAFE_IDEN` (

`CODI_GAFE_IDEN` bigint(64) NOT NULL,

`NOMB_GAFE_IDEN` varchar(200) NULL,

`NUME_TIPO_GAFE` varchar(200) NULL,

`CODI_TIPO_GAFE` bigint(64) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_GAFE_IDEN`) 

);

INSERT INTO gafe_iden values (0001,'visitante1','3',001,'2016-05-02',null,1)
INSERT INTO gafe_iden values (0002,'visitante2','3',001,'2016-03-21',null,1)
INSERT INTO gafe_iden values (0003, 'empleado1','2',002,'2016-04-23',null,1)
INSERT INTO gafe_iden values (0004, 'empleado2','2',002,'2016-01-20',null,1)
INSERT INTO gafe_iden values (0005, 'invitado1','2',002,'2016-04-22',null,1)
INSERT INTO gafe_iden values (0006, 'invitado2','2',002,'2016-06-21',null,1)
INSERT INTO gafe_iden values (0007, 'lider1','1',003,'2016-03-01',null,1)
INSERT INTO gafe_iden values (0008, 'lider2','1',003,'2016-04-05',null,1)


CREATE TABLE `UNID_ORGA` (

`CODI_UNID_ORGA` bigint(64) NOT NULL,

`NOMB_UNID_ORGA` varchar(100) NULL,

`SIGL_UNID_ORGA` varchar(100) NULL,

`CODI_UNID_ORGA_SUPE` bigint(64) NULL,

`DIRE_UNID_ORGA` varchar(200) NULL,

`TELE_UNID_ORGA` varchar(20) NULL,

`FAX_UNID_ORGA` varchar(20) NULL,

`EMAI_UNID_ORGA` varchar(50) NULL,

`CONT_UNID_ORGA` varchar(100) NULL,

`CODI_UBIC_GEOG` bigint(64) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_UNID_ORGA`) 

);

INSERT INTO unid_orga values (01,'Juridica','UJ',1,'sitio1','22039453',null,'juridico@fd.com',100,1,'2016-01-03',null,1)

INSERT INTO unid_orga values (02,'Informatica','UI',1,'sitio2','22549453',null,'informatica@fd.com',100,1,'2016-05-06',null,1)

INSERT INTO unid_orga values (03,'Administrativa','UA',1,'sitio3','22036553',null,'administrativo@fd.com',100,1,'2016-07-08',null,1)

INSERT INTO unid_orga values (04,'Contaduria','UC',1,'sitio4','22039456',null,'contaduria@fd.com',100,1,'2016-09-09',null,1)

INSERT INTO unid_orga values (05,'Tecnica','UT',1,'sitio5','22039467',null,'tecnica@fd.com',100,1,'2016-04-06',null,1)

select * from unid_orga

CREATE TABLE `PERS` (

`CODI_PERS` bigint(64) NOT NULL,

`NOMB_PERS` varchar(255) NULL,

`APEL_PERS` varchar(255) NULL,

`CODI_TIPO_PERS` bigint(64) NULL,

`GENE_PERS` char(1) NULL,

`FECH_NACI_PERS` datetime NULL,

`DUI_PERS` varchar(50) NULL,

`NIT_PERS` varchar(50) NULL,

`TIPO_SANG_PERS` varchar(50) NULL,

`CODI_UBIC_GEOG` bigint(64) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_PERS`) 

);

INSERT INTO pers values (01,'Juan Samuel','Valdez Rivas','01','M','1991-02-01','00123456785','012345678123456','O+',1,'2016-05-4',null,1)
INSERT INTO pers values (02,'Josh Nicolas','Bond Rivas','02','M','1996-02-01','00124456785','012349678123456','B+',1,'2016-05-03',null,1)
INSERT INTO pers values (03,'Jonathan','Gomez','01','M','1993-02-01','00163456785','012375678123456','A-',1,'2016-05-02',null,1)
INSERT INTO pers values (04,'Lucas','Vasquez','01','M','1994-02-01','00183456785','012545678123456','B+',1,'2016-05-01',null,1)
INSERT INTO pers values (05,'Kevin','Gonzalez','01','M','1995-02-01','00193456785','012375678123456','A-',1,'2016-05-04',null,1)

CREATE TABLE `TIPO_GAFE` (

`CODI_TIPO_GAFE` bigint(64) NOT NULL,

`NOMB_TIPO_GAFE` varchar(200) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_TIPO_GAFE`) 

);

INSERT INTO tipo_gafe values (001,'visitante','2016-03-01',null,1)
INSERT INTO tipo_gafe values (002,'empleado','2016-06-12',null,1)
INSERT INTO tipo_gafe values (003,'invitado','2016-07-21',null,1)
INSERT INTO tipo_gafe values (004,'lideres','2016-08-31',null,1)

CREATE TABLE `TIPO_PERS` (

`CODI_TIPO_PERS` bigint(64) NOT NULL,

`NOMB_TIPO_PERS` varchar(150) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_TIPO_PERS`) 

);

INSERT INTO tipo_pers values (01,'Publica','2016-01-02',null,1)
INSERT INTO tipo_pers values (02,'Privado','2016-03-01',null,1)

CREATE TABLE `PERS_HIST` (

`CODI_PERS_HIST` bigint(64) NOT NULL,

`CODI_PERS` bigint(64) NULL,

`NOMB_PERS` varchar(255) NULL,

`APEL_PERS` varchar(255) NULL,

`CODI_TIPO_PERS` bigint(64) NULL,

`CODI_UBIC_GEOG` bigint(64) NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_PERS_HIST`) 

);

INSERT INTO pers_hist values ('01','01','Juan','Valdez','01','1','2016-03-02',null,1)
INSERT INTO pers_hist values ('02','02','Yuko','Melendez','02','2','2016-05-21',null,1)
INSERT INTO pers_hist values ('03','03','Arios','Matinez','01','3','2016-06-12',null,1)
INSERT INTO pers_hist values ('04','04','Lucas','Vasquez','02','4','2016-07-13',null,1)
INSERT INTO pers_hist values ('05','05','Josue','Valdez','01','5','2016-08-14',null,1)


CREATE TABLE `USUA` (

`CODI_USUA` bigint(64) NOT NULL,

`CODI_PERS` bigint(64) NULL,

`ACCE_USUA` varchar(255) NULL,

`CONT_USUA` varchar(255) NULL,

`FECH_CAMB_CLAV_USUA` datetime NULL,

`FECH_ALTA` datetime NULL,

`FECH_BAJA` datetime NULL,

`ESTA` longblob NULL,

PRIMARY KEY (`CODI_USUA`) 

);

INSERT INTO usua values ('01','01','1','21',null,'2016-03-01',null,1)
INSERT INTO usua values ('02','02','2','21',null,'2016-03-20',null,1)
INSERT INTO usua values ('03','03','3','21',null,'2016-03-30',null,1)
INSERT INTO usua values ('04','04','4','21',null,'2016-03-15',null,1)
INSERT INTO usua values ('05','05','5','21',null,'2016-03-13',null,1)



ALTER TABLE `GAFE_IDEN` ADD CONSTRAINT `FK_GAFEIDEN_TIPOIDEN` FOREIGN KEY (`CODI_TIPO_GAFE`) REFERENCES `TIPO_GAFE` (`CODI_TIPO_GAFE`);

ALTER TABLE `UNID_ORGA` ADD CONSTRAINT `FK_UNIDORGA_UNIDORGA` FOREIGN KEY (`CODI_UNID_ORGA_SUPE`) REFERENCES `UNID_ORGA` (`CODI_UNID_ORGA`);

ALTER TABLE `EQUI_COMP` ADD CONSTRAINT `FK_EQUICOMP_LUGAACCE` FOREIGN KEY (`CODI_LUGA_ACCE`) REFERENCES `LUGA_ACCE` (`CODI_LUGA_ACCE`);

ALTER TABLE `UBIC_GEOG` ADD CONSTRAINT `FK_UBICGEOG_UBICGEOG` FOREIGN KEY (`CODI_UBIC_GEOG_SUPE`) REFERENCES `UBIC_GEOG` (`CODI_UBIC_GEOG`);

ALTER TABLE `VISI` ADD CONSTRAINT `FK_VISI_LUGAACCE_ENTR` FOREIGN KEY (`CODI_LUGA_ENTR`) REFERENCES `LUGA_ACCE` (`CODI_LUGA_ACCE`);

ALTER TABLE `VISI` ADD CONSTRAINT `FK_VISI_LUGAACCE_SALI` FOREIGN KEY (`CODI_LUGA_SALI`) REFERENCES `LUGA_ACCE` (`CODI_LUGA_ACCE`);

ALTER TABLE `VISI` ADD CONSTRAINT `FK_VISI_GAFEINDEN` FOREIGN KEY (`CODI_GAFE`) REFERENCES `GAFE_IDEN` (`CODI_GAFE_IDEN`);

ALTER TABLE `VISI` ADD CONSTRAINT `FK_VISI_UNIDORGA` FOREIGN KEY (`CODI_UNID_ORGA_VISI`) REFERENCES `UNID_ORGA` (`CODI_UNID_ORGA`);

ALTER TABLE `UNID_ORGA` ADD CONSTRAINT `FK_UNIDORGA_UBICGEOG` FOREIGN KEY (`CODI_UBIC_GEOG`) REFERENCES `UBIC_GEOG` (`CODI_UBIC_GEOG`);

ALTER TABLE `PERS` ADD CONSTRAINT `FK_PERS_TIPOPERS` FOREIGN KEY (`CODI_TIPO_PERS`) REFERENCES `TIPO_PERS` (`CODI_TIPO_PERS`);

ALTER TABLE `PERS_HIST` ADD CONSTRAINT `FK_PERSHIST_PERS` FOREIGN KEY (`CODI_PERS`) REFERENCES `PERS` (`CODI_PERS`);

ALTER TABLE `PERS_HIST` ADD CONSTRAINT `FK_PERSHIST_TIPOPERS` FOREIGN KEY (`CODI_TIPO_PERS`) REFERENCES `TIPO_PERS` (`CODI_TIPO_PERS`);

ALTER TABLE `VISI` ADD CONSTRAINT `FK_VISI_PERSHIST_USUA` FOREIGN KEY (`CODI_USUA`) REFERENCES `USUA` (`CODI_USUA`);

ALTER TABLE `VISI` ADD CONSTRAINT `FK_VISI_PERSHIST_PERS` FOREIGN KEY (`CODI_PERS`) REFERENCES `PERS_HIST` (`CODI_PERS_HIST`);

ALTER TABLE `VISI` ADD CONSTRAINT `FK_VISI_TIPODOCU` FOREIGN KEY (`CODI_TIPO_DOCU`) REFERENCES `TIPO_DOCU` (`CODI_TIPO_DOCU`);

ALTER TABLE `USUA` ADD CONSTRAINT `FK_USUA_PERS` FOREIGN KEY (`CODI_PERS`) REFERENCES `PERS` (`CODI_PERS`);



