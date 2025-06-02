

import React from "react";

export function AsideComponent({ className = "" }) {


    const items = [
        {
            ruta: "/ruta1",
            titulo: "Título 1",
            descripcion: "Descripción del primer elemento",
            imagen: "https://www.bing.com/th/id/OIP.SKeV6xSSIkVbbzyPnpWY9AHaE8?w=245&h=215&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2"
        },
        {
            ruta: "/ruta2",
            titulo: "Título 2",
            descripcion: "Descripción del segundo elemento",
            imagen: "https://via.placeholder.com/150"
        },
        {
            ruta: "/ruta2",
            titulo: "Título 2",
            descripcion: "Descripción del segundo elemento",
            imagen: "https://via.placeholder.com/150"
        },

    ];
    return (

        <aside className={`space-y-6  ${className}`}>

            <h3 className="italic text-2xl ">Mas Noticias</h3>
            {items.map(({ ruta, titulo, descripcion, imagen }, index) => (
                <a
                    key={index}
                    href={ruta}
                    className="flex items-center space-x-4 p-4 border rounded hover:shadow-lg transition-shadow"
                >
                    <img
                        src={imagen}
                        alt={titulo}
                        className="max-w-[150px] h-auto rounded"
                    />
                    <div className="flex-1">
                        <h4 className="text-lg font-semibold">{titulo}</h4>
                        <p className="text-gray-600">{descripcion}</p>
                    </div>

                </a>
            ))}
            
        </aside>



    )

}