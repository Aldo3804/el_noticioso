create table preferencia
(
    id_preferencia      int auto_increment
        primary key,
    id_noticia_etiqueta int not null,
    id_usuario          int not null
)
    collate = utf8mb4_general_ci;

create index FK8mmixgf52jr4axiaqsgllhgop
    on preferencia (id_noticia_etiqueta);

create index FKfim36ra54m6oe46xl9k0dnfi7
    on preferencia (id_usuario);

