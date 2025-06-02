// ModalInicio.jsx
import { useState } from "react";

export function ModalInicio() {

  const [credenciales, setCredenciales] = useState({
    correo: "",
    contrasenia: ""
  });

  function actualizar  (e) {
    const { name, value } = e.target;
    setCredenciales(prev => ({
      ...prev,
      [name]: value
    }));
  }

  function valores (e)  {
    e.preventDefault()
    console.log(credenciales)
  }

  return (
    <form className="space-y-4 flex flex-col">

      <label>Ingresar el correo electrónico : </label>

      <input
        name = "correo"
        type="email"
        value={credenciales.correo}
        onChange={actualizar}
        placeholder="Correo electrónico"
        className="input w-full"
      />
     
      <label>Ingresar la contraseña : </label>
      <input
        type="password"
        name="contrasenia"
        value={credenciales.contrasenia}
        onChange={actualizar}
        placeholder="Contraseña"
        className="input w-full"
      />
      <br></br>

      <button className="btn bg-blue-800 text-[20px] text-white" onClick={valores}>Iniciar Sesión</button>
    </form>
  )
}
