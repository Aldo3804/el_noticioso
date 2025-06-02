package com.example.el_noticioso_backend.repositorio;

import com.example.el_noticioso_backend.entidades.NoticiaEtiqueta;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NoticiaEtiquetaJPA extends JpaRepository<NoticiaEtiqueta,Integer> {

}
