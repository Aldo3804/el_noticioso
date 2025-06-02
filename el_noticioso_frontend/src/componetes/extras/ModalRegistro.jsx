// src/componentes/ModalRegistro.jsx
import { useState } from "react";
import { registrarUsuario } from "./../../servicios/usuarios/UsuariosServicio";

export function ModalRegistro() {

  //Definir los estados de la persona a registrar
  const [persona, setPersona] = useState({
    nombre: "",
    apellido: "", 
    correoElectronico: "", 
    telefono: "",
    contrasenia: ""
  });


  //Cambiar el estado de los valores de los inputs
  const actualizar = (e) => {
    const { name, value } = e.target;
    setPersona((prev) => ({
      ...prev,
      [name]: value
    }));
  };


  //Enviar los datos registrados usando el servicio de registrarUsuario 
  const enviar = async (e) => {
    e.preventDefault();
    try {
      const resultado = await registrarUsuario(persona);
      console.log("Registro exitoso:", resultado);
      alert("Usuario registrado con éxito");
    } catch (error) {
      alert(`Error al registrar usuario ${error}`);
    }
  };

  return (
    <form className="space-y-4 flex flex-col" onSubmit={enviar}>
      <fieldset>
        <label>Nombre: </label>
        <input
          name="nombre"
          value={persona.nombre}
          placeholder="Ingrese el nombre"
          className="input w-full"
          onChange={actualizar}
          required
        />
      </fieldset>

      <fieldset>
        <label>Apellido: </label>
        <input
          name="apellido"
          value={persona.apellido}
          placeholder="Ingrese el apellido"
          className="input w-full"
          onChange={actualizar}
          required
        />
      </fieldset>

      <fieldset>
        <label>Correo Electrónico: </label>
        <input
          name="correoElectronico"
          type="email"
          value={persona.correoElectronico}
          placeholder="Ingrese el correo electrónico"
          className="input w-full"
          onChange={actualizar}
          required
        />
      </fieldset>

      <fieldset>
        <label>Teléfono: </label>
        <input
          name="telefono"
          type="tel"
          value={persona.telefono}
          placeholder="Ingrese su teléfono"
          className="input w-full"
          onChange={actualizar}
          required
        />
      </fieldset>

      <fieldset>
        <label>Contraseña: </label>
        <input
          name="contrasenia"
          type="password"
          value={persona.contrasenia}
          placeholder="Ingrese su contraseña"
          className="input w-full"
          onChange={actualizar}
          required
        />
      </fieldset>

      <button type="submit" className="btn bg-green-700 text-white text-[20px]">
        Enviar
      </button>
    </form>
  );
}
