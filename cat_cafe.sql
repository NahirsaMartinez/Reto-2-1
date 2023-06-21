SHOW DATABASES;

CREATE DATABASE cat_cafe;

USE cat_cafe;

SHOW TABLES;

CREATE TABLE perfil_gatos(
    id_registro INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    apodo VARCHAR(30),
    edad INT NOT NULL,
    peso INT NOT NULL,
    caracteristica VARCHAR(60) NOT NULL,
    color_pelaje VARCHAR(30) NOT NULL,
    color_ojos VARCHAR(20) NOT NULL,
    llego_solo BOOLEAN,

    PRIMARY KEY (id_registro)
);

DESCRIBE perfil_gatos;

SELECT * FROM perfil_gatos;

ALTER TABLE perfil_gatos MODIFY peso FLOAT NOT NULL;

INSERT INTO perfil_gatos (nombre,edad,peso,caracteristica,color_pelaje,color_ojos,llego_solo) 
VALUES ("Rocket",3,3,"le gusta dormir mucho","blanco","celeste",0);

INSERT INTO perfil_gatos (nombre,apodo,edad,peso,caracteristica,color_pelaje,color_ojos,llego_solo) 
VALUES ("Pinto","Pin",5,3.5,"le gusta los mimos","naranja/blanco","amarillo/verde",1);

SELECT * FROM perfil_gatos;

INSERT INTO perfil_gatos (nombre,edad,peso,caracteristica,color_pelaje,color_ojos,llego_solo) 
VALUES ("Sunny",2,5,"le gusta jugar con pelotitas","negro","amarillo",1);

INSERT INTO perfil_gatos (nombre,apodo,edad,peso,caracteristica,color_pelaje,color_ojos,llego_solo) 
VALUES ("Emelia","Emeli",5,4.4,"le gusta reposar donde hay sol","gris/negro","amarillo",0);

INSERT INTO perfil_gatos (nombre,edad,peso,caracteristica,color_pelaje,color_ojos,llego_solo) 
VALUES ("Nikki",4,4.3,"no se despega de ricochet","gris","verde claro",1);

INSERT INTO perfil_gatos (nombre,edad,peso,caracteristica,color_pelaje,color_ojos,llego_solo) 
VALUES ("Ricochet",4,4.7,"le gusta los lugares altos","blanco/gris","celeste",1);

INSERT INTO perfil_gatos (nombre,edad,peso,caracteristica,color_pelaje,color_ojos,llego_solo) 
VALUES ("Onyx",7,3.3,"va donde hay comida","Naranja/marron","amarillo",1);

INSERT INTO perfil_gatos (nombre,edad,peso,caracteristica,color_pelaje,color_ojos,llego_solo) 
VALUES ("Seiko",2,3.7,"le gusta dormir con otros gatos","blanco/gris","verde",1);

INSERT INTO perfil_gatos (nombre,apodo,edad,peso,caracteristica,color_pelaje,color_ojos,llego_solo) 
VALUES ("Nathan","Ninja nate",7,4.5,"le encanta esconderse","Negro","amarillo",1);


DESCRIBE perfil_gatos;

ALTER TABLE perfil_gatos
ALTER COLUMN apodo SET DEFAULT 'No tiene';

UPDATE perfil_gatos SET apodo = DEFAULT WHERE apodo IS NULL;

SELECT * FROM perfil_gatos;

