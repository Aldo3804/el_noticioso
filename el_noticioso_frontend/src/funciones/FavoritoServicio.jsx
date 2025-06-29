
import axios from "axios"





class FavoritoServicio{

    
    agregarFavorito(favorito){
        return axios.put(`http://localhost:8080/favoritos/aniadir`,favorito)
    }

    eliminarFavorito(favorito){
        return axios.delete(`http://localhost:8080/favoritos/eliminar`,favorito)
    }

    listarFavorito(idUsuario){
        return axios.get(`http://localhost:8080/favoritos/listar/${idUsuario}`)
    }
    

}

export default new FavoritoServicio

