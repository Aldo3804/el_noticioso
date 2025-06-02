package com.example.el_noticioso_backend.repositorio;

import com.example.el_noticioso_backend.entidades.Favorito;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FavoritoJPA extends JpaRepository<Favorito,Integer> {
}
