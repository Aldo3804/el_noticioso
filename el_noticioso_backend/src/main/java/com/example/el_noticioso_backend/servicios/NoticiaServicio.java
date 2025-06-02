package com.example.el_noticioso_backend.servicios;

import com.example.el_noticioso_backend.dto.NoticiaDTO;


import java.util.List;

public interface NoticiaServicio {

    void agregarNoticias(NoticiaDTO noticiaDTO);

    void eliminarNoticias(NoticiaDTO noticiaDTO);

    List<NoticiaDTO> filtrarPorLocalia(String localia);

    List<NoticiaDTO> listarNoticias();

    List<NoticiaDTO> mostrarInicio();

}
