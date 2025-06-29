create table etiqueta
(
    id_etiqueta     int auto_increment
        primary key,
    nombre_etiqueta varchar(100) not null,
    constraint UK8lfdtt9ladi39gjb1rqlwjscq
        unique (nombre_etiqueta)
)
    collate = utf8mb4_general_ci;

