create table noticia
(
    id_noticia        int auto_increment
        primary key,
    autor             varchar(255) not null,
    fecha_publicacion date         not null,
    imagen_url        varchar(255) null,
    localia           varchar(255) not null,
    resumen           text         not null,
    titulo_noticia    varchar(255) not null,
    constraint titulo_noticia
        unique (titulo_noticia)
)
    collate = utf8mb4_general_ci;

