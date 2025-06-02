package com.example.el_noticioso_backend.entidades;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;

@Entity
@Table(name = "noticia_etiqueta",
        uniqueConstraints = @UniqueConstraint(columnNames = {"id_noticia", "id_etiqueta"}))
@Data
@NoArgsConstructor
@AllArgsConstructor
public class NoticiaEtiqueta {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_noticia_etiqueta")
    private int idNoticiaEtiqueta;


    @ManyToOne
    @JoinColumn(name = "id_noticia", nullable = false)
    private Noticia noticia;

    @ManyToOne
    @JoinColumn(name = "id_etiqueta", nullable = false)
    private Etiqueta etiqueta;

}