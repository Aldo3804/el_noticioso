

import axios from "axios";


//Usar la api rest
const CONEXION_API_REGISTRAR = "http://localhost:8080/usuario/crear";


//Crear el servicio con la api definida

class UsuarioServicio{

    

}

export async function registrarUsuario(persona) {
  try {
    const response = await axios.post(CONEXION_API_REGISTRAR, persona);
    return response.data;
  } catch (error) {
    console.error("Error al registrar el usuario:", error);
    throw error;
  }
}
