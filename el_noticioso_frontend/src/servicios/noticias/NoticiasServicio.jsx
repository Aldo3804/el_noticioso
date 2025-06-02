
import axios from "axios";




class NoticiasServicio{

    obtenerNoticiaInicio(){
        return axios.get(`http://localhost:8080/noticia/inicio`)
    }


    filtrarLocalia(localia){
        return axios.get(`http://localhost:8080/noticia/filtrar/${localia}`)
    }

}

export default new NoticiasServicio