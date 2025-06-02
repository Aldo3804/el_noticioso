package com.example.el_noticioso_backend.dto;

import java.time.LocalDate;

public record NoticiaDTO(

        String titulo,
        String resumen,
        LocalDate fechaPublicacion,
        String imagenUrl,
        String autor

){


}
