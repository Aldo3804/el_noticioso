create
    definer = admin@`%` procedure crearNoticias(IN tituloNoticia varchar(255), IN localiaNoticia varchar(255),
                                                IN resumenNoticia text, IN autorNoticia varchar(255),
                                                IN fechaNoticia date, IN imagenUrlNoticia varchar(255),
                                                IN idEtiqueta int)
begin
    declare idNoticia int;

    insert into noticia(autor, fecha_publicacion, imagen_url, localia, resumen, titulo_noticia)
        values (autorNoticia,fechaNoticia,imagenUrlNoticia,localiaNoticia,resumenNoticia,tituloNoticia);

    set idNoticia = LAST_INSERT_ID();

    insert into noticia_etiqueta(id_etiqueta, id_noticia)
        values (idEtiqueta,idNoticia);
        

end;

