package com.example.el_noticioso_backend.servicios.impl;

import com.example.el_noticioso_backend.dto.UsuarioDTO;
import com.example.el_noticioso_backend.entidades.Rol;
import com.example.el_noticioso_backend.entidades.Usuario;
import com.example.el_noticioso_backend.repositorio.UsuarioJPA;
import com.example.el_noticioso_backend.servicios.UsuarioServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;


@Service
public class UsuarioServicioImpl implements UsuarioServicio {

    @Autowired
    private UsuarioJPA usuarioJPA;

    @Override
    public void agregarUsuario(UsuarioDTO dto) {
        Usuario usuario = mapearEntidad(dto);
        Rol rol = new Rol();
        rol.setIdRol(2);
        usuario.setRol(rol);
        usuarioJPA.save(usuario);
    }

    @Override
    public void eliminarUsuario(UsuarioDTO dto) {
        Usuario usuario = mapearEntidad(dto);
        usuarioJPA.delete(usuario);
    }

    @Override
    public List<UsuarioDTO> listarUsuarios() {
        return usuarioJPA.findAll()
                .stream()
                .map(this::mapearDTO)
                .collect(Collectors.toList());
    }

    // MÉTODOS DE MAPEADO MANUAL
    private Usuario mapearEntidad(UsuarioDTO dto) {
        Usuario usuario = new Usuario();
        usuario.setNombre(dto.nombre());
        usuario.setApellido(dto.apellido());
        usuario.setCorreoElectronico(dto.correoElectronico());
        usuario.setTelefono(dto.telefono());
        usuario.setContrasenia(dto.contrasenia());
        return usuario;
    }

    private UsuarioDTO mapearDTO(Usuario usuario) {
        return new UsuarioDTO(
                usuario.getNombre(),
                usuario.getApellido(),
                usuario.getCorreoElectronico(),
                usuario.getTelefono(),
                usuario.getContrasenia()
        );
    }

}
