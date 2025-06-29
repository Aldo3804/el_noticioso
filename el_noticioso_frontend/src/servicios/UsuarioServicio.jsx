

import axios from "axios";


class UsuarioServicio{

    registrarUsuario(persona){
        return axios.post("http://localhost:8080/usuario/crear",persona)
    }

    iniciarSesion(credenciales){
        return axios.post("http://localhost:8080/usuario/sesion",credenciales)
    }

    buscarIdUsuario(correoElectronico){
        return axios.get(`http://localhost:8080/usuario/buscar/${correoElectronico}`)
    }
}

export default new UsuarioServicio
