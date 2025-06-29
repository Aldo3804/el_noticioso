create definer = admin@`%` view v_FavoritoUsuario as
select `u`.`id_usuario`        AS `id_usuario`,
       `n`.`titulo_noticia`    AS `titulo_noticia`,
       `n`.`resumen`           AS `resumen`,
       `n`.`autor`             AS `autor`,
       `n`.`fecha_publicacion` AS `fecha_publicacion`,
       `n`.`imagen_url`        AS `imagen_url`
from ((`el_noticioso`.`favorito` `f` join `el_noticioso`.`usuario` `u`
       on ((`f`.`id_usuario` = `u`.`id_usuario`))) join `el_noticioso`.`noticia` `n`
      on ((`f`.`id_noticia` = `n`.`id_noticia`)));

