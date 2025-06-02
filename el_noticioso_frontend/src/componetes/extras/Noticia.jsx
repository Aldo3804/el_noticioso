import React from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faBookmark } from "@fortawesome/free-solid-svg-icons";

export function Noticia({ titulo, resumen, imagen, autor, fecha }) {
  
  return (
    <section className="card bg-base-100 shadow-xl max-w-4xl mx-auto my-10">
      <div className="card-body space-y-4">
        <div className="flex justify-between items-start">
          <h2 className="card-title uppercase tracking-wide text-xl lg:text-2xl">
            {titulo}
          </h2>
          <button className="btn btn-ghost btn-sm text-primary">
            <FontAwesomeIcon icon={faBookmark} />
          </button>
        </div>

        <p className="text-base text-justify">{resumen}</p>


        <img
            src={imagen}
            alt={titulo}
            className="w-full h-64 md:h-80 lg:h-[400px] object-cover rounded-lg"
        />

        {/* Autor y fecha */}
        <div className="card-actions justify-between items-center text-sm text-gray-500">
          <span>
            Por: <span className="text-gray-800 font-medium">{autor}</span>
          </span>
          <time dateTime={fecha} className="italic">{fecha}</time>
        </div>
      </div>
    </section>
  );
}
