create table usuario
(
    id_usuario         int auto_increment
        primary key,
    apellido           varchar(255) not null,
    contrasenia        varchar(255) not null,
    correo_electronico varchar(255) not null,
    nombre             varchar(255) not null,
    telefono           varchar(9)   not null,
    id_cargo           int          null,
    constraint correo_electronico
        unique (correo_electronico)
)
    collate = utf8mb4_general_ci;

