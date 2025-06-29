package com.example.el_noticioso_backend.servicios.impl;

import com.example.el_noticioso_backend.dto.UsuarioDTO;
import com.example.el_noticioso_backend.entidades.Rol;
import com.example.el_noticioso_backend.entidades.Usuario;
import com.example.el_noticioso_backend.repositorio.UsuarioJPA;
import com.example.el_noticioso_backend.servicios.UsuarioServicio;
import com.example.el_noticioso_backend.utilidades.EncriptarContrasenia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;
import com.example.el_noticioso_backend.utilidades.ManejoExcepciones;

@Service
public class UsuarioServicioImpl implements UsuarioServicio {

    @Autowired
    private UsuarioJPA usuarioJPA;

    @Autowired
    private PasswordEncoder passwordEncoder;



    @Override
    public void agregarUsuario(UsuarioDTO dto) {

        Usuario usuario = mapearEntidad(dto);

        if(usuarioJPA.findByCorreoElectronico(dto.correoElectronico()).isPresent()){
            throw new DataIntegrityViolationException("Ya existe un usuario registrado con ese correo.");
        }

        usuario.setContrasenia(passwordEncoder.encode(usuario.getContrasenia()));

        Rol rol = new Rol();
        rol.setIdRol(2);
        usuario.setRol(rol);

        usuarioJPA.save(usuario);
    }

    @Override
    public void modificarUsuario(UsuarioDTO usuarioDTO) {

        Usuario usuario = mapearEntidad(usuarioDTO);
        usuarioJPA.save(usuario);

    }

    @Override
    public void eliminarUsuario(UsuarioDTO dto) {
        Usuario usuario = mapearEntidad(dto);
        usuarioJPA.delete(usuario);
    }

    @Override
    public UsuarioDTO iniciarSesion(String correoElectronico, String contrasenia) {
        Usuario usuario = usuarioJPA.findByCorreoElectronico(correoElectronico)
                .orElseThrow(() -> new IllegalArgumentException("Correo no encontrado"));

        if (!passwordEncoder.matches(contrasenia, usuario.getContrasenia())) {
            throw new IllegalArgumentException("Contraseña inválida");
        }

        return mapearDTO(usuario);
    }

    @Override
    public List<UsuarioDTO> listarUsuarios() {
        return usuarioJPA.findAll()
                .stream()
                .map(this::mapearDTO)
                .collect(Collectors.toList());
    }

    @Override
    public Integer obtenerIdUsuario(String correoElectronico) {
        return usuarioJPA.findByCorreoElectronico(correoElectronico).stream().findFirst().get().getIdUsuario();
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
