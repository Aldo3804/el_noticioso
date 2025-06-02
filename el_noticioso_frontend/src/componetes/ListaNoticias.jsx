

import { useEffect, useState } from "react";
import { Noticia } from "./extras/Noticia";
import NoticiasServicio from "../servicios/noticias/NoticiasServicio";
import noticiaMolde from ".././json/noticia.json"


export function ListaNoticias({ localia }) {

    const [noticias, setNoticias] = useState([]);


    function vincularNoticias(noticiaAPI) {
        return {
            ...noticiaMolde,
            ...noticiaAPI
        };
    }


    function obtenerNoticias() {
        const servicio = localia
            ? NoticiasServicio.filtrarLocalia(localia)
            : NoticiasServicio.obtenerNoticiaInicio();

        servicio
            .then((respuesta) => {
                setNoticias(respuesta.data.map(vincularNoticias));
            })
            .catch((error) => {
                console.error("Error al obtener noticias:", error);
            });
    }

    useEffect(() => {
        obtenerNoticias();
    }, [localia]); 


    return (

        <div className="md:col-span-2 space-y-6">
            {noticias.map((noticia, index) => (
                <Noticia
                    key={index}
                    titulo={noticia.titulo}
                    resumen={noticia.resumen}
                    imagen={noticia.imagenUrl}
                    autor={noticia.autor}
                    fecha={noticia.fechaPublicacion}
                />
            ))}
        </div>

    )

}