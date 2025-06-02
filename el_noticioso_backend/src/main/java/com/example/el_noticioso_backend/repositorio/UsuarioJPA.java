package com.example.el_noticioso_backend.repositorio;

import com.example.el_noticioso_backend.entidades.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UsuarioJPA extends JpaRepository<Usuario,Integer> {


}

