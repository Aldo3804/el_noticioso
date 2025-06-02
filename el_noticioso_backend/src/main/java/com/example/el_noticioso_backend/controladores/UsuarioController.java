package com.example.el_noticioso_backend.controladores;

import com.example.el_noticioso_backend.dto.UsuarioDTO;
import com.example.el_noticioso_backend.servicios.UsuarioServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@CrossOrigin(origins = "http://localhost:5173")
@RestController
@RequestMapping("/usuario")
public class UsuarioController {


    @Autowired
    private UsuarioServicio usuarioServicio;

    @PostMapping("/crear")
    public ResponseEntity<Void> crear(@RequestBody UsuarioDTO usuarioDTO) {
        usuarioServicio.agregarUsuario(usuarioDTO);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @GetMapping("/listar")
    public ResponseEntity<List<UsuarioDTO>> listar() {
        return ResponseEntity.ok(usuarioServicio.listarUsuarios());
    }




}
