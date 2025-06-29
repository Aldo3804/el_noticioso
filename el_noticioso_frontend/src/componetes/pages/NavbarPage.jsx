
import { Link } from "react-router-dom";
import { useUsuario } from "../../hooks/useUsuario";


export function NavBar() {

    const { usuario } = useUsuario()

    const estaLogueado = !!usuario

    return (
        <nav className="navbar shadow-sm bg-gray-600">
            <div className="flex-1 ml-20">
                <a className="text-xl text-white font-semibold">El Noticioso</a>
            </div>
            <div className="flex-none mr-20">
                <ul className="menu menu-horizontal px-1 text-white">
                    <li>
                        <Link to="/" className="block px-2 py-1 hover:bg-gray-700 rounded">
                            Inicio
                        </Link>
                    </li>
                    <li>
                        <details className="relative">

                            <summary className="cursor-pointer hover:bg-gray-700 rounded px-2 py-1">
                                Opciones
                            </summary>

                            <ul className="absolute bg-gray-600 rounded-b-md rounded-t-none p-2 mt-1 shadow-lg w-40 z-10">
                                <li>
                                    <Link to="/local" className="block px-2 py-1 hover:bg-gray-700 rounded">
                                        Local
                                    </Link>
                                </li>
                                <li>
                                    <Link to="/regional" className="block px-2 py-1 hover:bg-gray-700 rounded">
                                        Regional
                                    </Link>
                                </li>
                                <li>
                                    <Link to="/nacional" className="block px-2 py-1 hover:bg-gray-700 rounded">
                                        Nacional
                                    </Link>
                                </li>
                                <li>
                                    <Link to="/internacional" className="block px-2 py-1 hover:bg-gray-700 rounded">
                                        Internacional
                                    </Link>
                                </li>
                                {
                                    estaLogueado && (
                                        <>
                                            <li>
                                                <Link to="/favoritos" className="block px-2 py-1 hover:bg-gray-700 rounded" >Favoritos</Link>
                                            </li>
                                            <li>
                                                <Link to="/archivo" className="block px-2 py-1 hover:bg-gray-700 rounded" >Archivo</Link>
                                            </li>
                                        </>

                                    )
                                }
                            </ul>

                        </details>
                    </li>
                </ul>
            </div>
        </nav>
    );
}
