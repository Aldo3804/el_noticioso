package com.example.el_noticioso_backend.servicios.impl;

import com.example.el_noticioso_backend.dto.NoticiaDTO;
import com.example.el_noticioso_backend.entidades.Noticia;
import com.example.el_noticioso_backend.repositorio.NoticiaJPA;
import com.example.el_noticioso_backend.servicios.NoticiaServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;


@Service
public class NoticiaServicioImpl implements NoticiaServicio {


    @Autowired
    private NoticiaJPA noticiaJPA;


    @Override
    public void agregarNoticias(NoticiaDTO noticiaDTO) {

        Noticia noticia =  mapeoEntidad(noticiaDTO);
        noticiaJPA.save(noticia);

    }

    @Override
    public void eliminarNoticias(NoticiaDTO noticiaDTO) {
        Noticia noticia =  mapeoEntidad(noticiaDTO);
        noticiaJPA.delete(noticia);
    }


    @Override
    public List<NoticiaDTO> listarNoticias() {
        return noticiaJPA.listarNoticias();
    }

    @Override
    public List<NoticiaDTO> filtrarPorLocalia(String localia) {
        List<NoticiaDTO> noticia = noticiaJPA.filtrarPorLocalia(localia);
        return noticia;
    }

    @Override
    public List<NoticiaDTO> mostrarInicio(){
        return noticiaJPA.mostrarInicio();
    }

    @Override
    public Integer obtenerIdNoticia(String titulo) {
        return noticiaJPA.findByTitulo(titulo);
    }

    //Mapeo de las clases NoticiaDTO y Noticia


    public Noticia mapeoEntidad(NoticiaDTO noticiaDTO){

        Noticia noticia = new Noticia();
        noticia.setTitulo(noticiaDTO.titulo());
        noticia.setResumen(noticiaDTO.titulo());
        noticia.setFechaPublicacion(noticiaDTO.fechaPublicacion());
        noticia.setImagenUrl(noticiaDTO.imagenUrl());
        noticia.setAutor(noticiaDTO.autor());
        return noticia;

    }


}
