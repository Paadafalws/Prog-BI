BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Python" (
	"ID"	INT NOT NULL,
	"NAME"	TEXT NOT NULL,
	"PCUSTO"	INT,
	"PVENDA"	INT,
	PRIMARY KEY("ID")
);
CREATE TABLE IF NOT EXISTS "regime" (
	"idRemige"	INTEGER,
	"Descricao"	TEXT NOT NULL,
	PRIMARY KEY("idRemige")
);
CREATE TABLE IF NOT EXISTS "Tipocliente" (
	"idTipoCliente"	INTEGER NOT NULL UNIQUE,
	"Descricacao"	TEXT,
	PRIMARY KEY("idTipoCliente" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Cliente" (
	"idCliente"	INTEGER NOT NULL UNIQUE,
	"Tipocliente"	INTEGER NOT NULL,
	"cnpj"	TEXT,
	"IE"	TEXT,
	"cpt"	TEXT,
	"rg"	TEXT,
	"nome cliente"	TEXT,
	"cep"	TEXT,
	"Regime"	INTEGER,
	PRIMARY KEY("idCliente" AUTOINCREMENT),
	FOREIGN KEY("Tipocliente") REFERENCES "Tipocliente"("idTipoCliente"),
	FOREIGN KEY("Regime") REFERENCES "regime"("idRemige")
);
INSERT INTO "Python" VALUES (1,'Aluminum','$1.02','$15.40');
INSERT INTO "Python" VALUES (2,'Aluminum','$3.96','$10.31');
INSERT INTO "Python" VALUES (3,'Aluminum','$6.94','$21.73');
INSERT INTO "Python" VALUES (4,'Rubber','$3.03','$17.54');
INSERT INTO "Python" VALUES (5,'Aluminum','$6.22','$22.66');
INSERT INTO "Python" VALUES (6,'Rubber','$7.85','$19.20');
INSERT INTO "Python" VALUES (7,'Aluminum','$0.15','$25.29');
INSERT INTO "Python" VALUES (8,'Stone','$7.10','$19.07');
INSERT INTO "Python" VALUES (9,'Brass','$3.25','$25.44');
INSERT INTO "Python" VALUES (10,'Granite','$3.70','$23.84');
INSERT INTO "Python" VALUES (11,'Stone','$6.68','$10.11');
INSERT INTO "Python" VALUES (12,'Rubber','$1.84','$16.33');
INSERT INTO "Python" VALUES (13,'Rubber','$3.44','$15.90');
INSERT INTO "Python" VALUES (14,'Plexiglass','$3.38','$29.97');
INSERT INTO "Python" VALUES (15,'Rubber','$7.27','$14.86');
INSERT INTO "Python" VALUES (16,'Stone','$8.51','$24.97');
INSERT INTO "Python" VALUES (17,'Rubber','$3.05','$19.83');
INSERT INTO "Python" VALUES (18,'Granite','$8.94','$34.20');
INSERT INTO "Python" VALUES (19,'Aluminum','$6.48','$32.91');
INSERT INTO "Python" VALUES (20,'Aluminum','$5.27','$32.53');
INSERT INTO "Python" VALUES (21,'Wood','$2.97','$30.56');
INSERT INTO "Python" VALUES (22,'Aluminum','$1.22','$24.04');
INSERT INTO "Python" VALUES (23,'Steel','$5.09','$29.79');
INSERT INTO "Python" VALUES (24,'Aluminum','$4.18','$21.66');
INSERT INTO "Python" VALUES (25,'Glass','$4.70','$33.92');
INSERT INTO "Python" VALUES (26,'Plexiglass','$1.67','$20.74');
INSERT INTO "Python" VALUES (27,'Plastic','$4.41','$15.65');
INSERT INTO "Python" VALUES (28,'Steel','$1.93','$20.68');
INSERT INTO "Python" VALUES (29,'Granite','$5.88','$26.79');
INSERT INTO "Python" VALUES (30,'Glass','$6.47','$23.32');
INSERT INTO "Python" VALUES (31,'Aluminum','$4.81','$23.84');
INSERT INTO "Python" VALUES (32,'Stone','$5.67','$32.17');
INSERT INTO "Python" VALUES (33,'Granite','$7.54','$34.77');
INSERT INTO "Python" VALUES (34,'Granite','$5.57','$21.84');
INSERT INTO "Python" VALUES (35,'Granite','$0.58','$14.40');
INSERT INTO "Python" VALUES (36,'Wood','$9.15','$28.02');
INSERT INTO "Python" VALUES (37,'Wood','$5.05','$18.08');
INSERT INTO "Python" VALUES (38,'Plexiglass','$0.30','$16.51');
INSERT INTO "Python" VALUES (39,'Granite','$5.34','$25.92');
INSERT INTO "Python" VALUES (40,'Vinyl','$2.90','$11.51');
INSERT INTO "Python" VALUES (41,'Brass','$4.21','$19.48');
INSERT INTO "regime" VALUES (1,'Simples nascional');
INSERT INTO "regime" VALUES (2,'Mei');
INSERT INTO "regime" VALUES (3,'Lucro presumido');
INSERT INTO "Tipocliente" VALUES (1,'CNPJ');
INSERT INTO "Tipocliente" VALUES (2,'CPF');
INSERT INTO "Cliente" VALUES (1,2,'6578855181','19-433-4355','54575-904','72-055-6509','Rora','42023-117',1);
INSERT INTO "Cliente" VALUES (2,1,'5994529508','60-298-2587','59779-314','15-760-5357','Willabella','68047-186',1);
INSERT INTO "Cliente" VALUES (3,2,'2536387070','79-032-1665','53808-0633','34-612-7011','Oswell','50970-001',2);
INSERT INTO "Cliente" VALUES (4,2,'1531619940','67-891-5082','60429-348','83-249-9681','Nicolle','51621-045',3);
INSERT INTO "Cliente" VALUES (5,1,'5994529508','60-298-2587','59779-314','15-760-5357','Willabella','68047-186',2);
INSERT INTO "Cliente" VALUES (6,1,'1531619940','67-891-5082','60429-348','83-249-9681','Nicolle','51621-045',3);
INSERT INTO "Cliente" VALUES (7,2,'7042154991','34-294-5808','51141-0236','73-767-4929','Ara','44567-312',1);
COMMIT;
