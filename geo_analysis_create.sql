-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-11-28 19:35:26.667

-- tables
-- Table: bolsa_familia
CREATE TABLE bolsa_familia (
    id int NOT NULL AUTO_INCREMENT,
    ibge int NOT NULL,
    UF char(2) NOT NULL,
    y_m char(7) NOT NULL,
    qtd_ben_bas int NULL,
    qtd_ben_var int NULL,
    qtd_ben_bvj int NULL,
    qtd_ben_bvn int NULL,
    qtd_ben_bvg int NULL,
    qtd_ben_bsp int NULL,
    CONSTRAINT bolsa_familia_pk PRIMARY KEY (id)
);

-- Table: counties
CREATE TABLE counties (
    id int NOT NULL,
    UF char(2) NOT NULL,
    name varchar(50) NOT NULL,
    geometry geometry NOT NULL,
    population int NOT NULL,
    idhm double NOT NULL,
    pib double NULL,
    CONSTRAINT counties_pk PRIMARY KEY (id)
);

-- Table: states
CREATE TABLE states (
    code char(2) NOT NULL,
    state_name varchar(20) NOT NULL,
    CONSTRAINT states_pk PRIMARY KEY (code)
);

-- Table: ubs
CREATE TABLE ubs (
    cnes int NOT NULL,
    UF char(2) NOT NULL,
    name varchar(100) NOT NULL,
    geometry geometry,
    CONSTRAINT ubs_pk PRIMARY KEY (cnes)
);

-- foreign keys
-- Reference: UBS_states (table: ubs)
ALTER TABLE ubs ADD CONSTRAINT UBS_states FOREIGN KEY UBS_states (UF)
    REFERENCES states (code);

-- Reference: bolsa_familia_states (table: bolsa_familia)
ALTER TABLE bolsa_familia ADD CONSTRAINT bolsa_familia_states FOREIGN KEY bolsa_familia_states (UF)
    REFERENCES states (code);

-- Reference: cities_states (table: counties)
ALTER TABLE counties ADD CONSTRAINT cities_states FOREIGN KEY cities_states (UF)
    REFERENCES states (code);

-- End of file.

