

import React from "react";
import Logo from "../assets/logo.png"

export function CabezeraComponent() {

    return (
        <header className= "flex justify-between mx-10 items-center">

            <img src={Logo} className="w-40 h-40 "/>
            <h1 className="text-3xl font-bold hidden sm:block">EL NOTICIOSO</h1>
            <div className="flex gap-6">
                <button className="bg-blue-800 text-white p-2">Iniciar Sesión</button>
                <button className="underline">Registrarse</button>
            </div>
        </header>
    )

}


