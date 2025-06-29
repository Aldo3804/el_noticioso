create table noticia_etiqueta
(
    id_noticia_etiqueta int auto_increment
        primary key,
    id_etiqueta         int not null,
    id_noticia          int not null,
    constraint UK2bmvf90jh7xraovsus6myy4dx
        unique (id_noticia, id_etiqueta)
)
    collate = utf8mb4_general_ci;

create index FK1l34rbace9q4t8fw9b1rlhso
    on noticia_etiqueta (id_etiqueta);

