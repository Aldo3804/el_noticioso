


import React, { useState } from "react";
import { BotonBarra } from "./ui/BotonBarra";


export function NavegadorComponent() {
  
    return(

        <nav className="flex justify-around bg-gray-900">
            <BotonBarra titulo="Inicio"/>
            <BotonBarra titulo="Local"/>
            <BotonBarra titulo="Regional"/>
            <BotonBarra titulo="Nacional"/>
            <BotonBarra titulo="Internacional"/>
            <BotonBarra titulo="Archivo"/>
        </nav>

    )

}
