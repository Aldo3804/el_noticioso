package com.example.el_noticioso_backend.repositorio;

import com.example.el_noticioso_backend.dto.NoticiaDTO;
import com.example.el_noticioso_backend.entidades.Noticia;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NoticiaJPA extends JpaRepository<Noticia,Integer> {


    @Query("select new com.example.el_noticioso_backend.dto.NoticiaDTO(n.idNoticia,n.titulo,n.resumen,n.fechaPublicacion,n.imagenUrl,n.autor) from Noticia n")
    List<NoticiaDTO> listarNoticias();

    @Query("select new com.example.el_noticioso_backend.dto.NoticiaDTO(n.idNoticia,n.titulo,n.resumen,n.fechaPublicacion,n.imagenUrl,n.autor) from Noticia n where n.localia= :localia")
    List<NoticiaDTO> filtrarPorLocalia(@Param("localia") String localia);

    @Query("select new com.example.el_noticioso_backend.dto.NoticiaDTO(n.idNoticia,n.titulo,n.resumen,n.fechaPublicacion,n.imagenUrl,n.autor) from Noticia n order by rand() limit 5")
    List<NoticiaDTO> mostrarInicio();

    Integer findByTitulo(String titulo);


}
