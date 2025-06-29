package com.example.el_noticioso_backend.usuarios;


import com.example.el_noticioso_backend.entidades.Usuario;
import com.example.el_noticioso_backend.servicios.UsuarioServicio;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultMatcher;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.client.match.MockRestRequestMatchers.content;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;


@WebMvcTest(UsuarioServicio.class)
public class UsuarioTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private UsuarioServicio usuarioServicio;

    @Test
    public void testBuscarUsuario() throws Exception {
        String correo = "test@example.com";
        Integer idUsuario = 1;

        when(usuarioServicio.obtenerIdUsuario(correo)).thenReturn(idUsuario);

        mockMvc.perform(get("/usuario/buscar/{correo}", correo))
                .andExpect(status().isOk())
                .andExpect((ResultMatcher) content().string("1"));
    }


}
