create table favorito
(
    id_favorito int auto_increment
        primary key,
    id_noticia  int not null,
    id_usuario  int not null
)
    collate = utf8mb4_general_ci;

create index FK3s0w2ds0u6nrh5o1gca08hjuw
    on favorito (id_noticia);

create index FK5vmlgfa4nyi848sknxb237yjt
    on favorito (id_usuario);

