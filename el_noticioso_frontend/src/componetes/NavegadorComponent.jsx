import React, { useState } from 'react';
import { Link } from 'react-router-dom';

export function NavegadorComponent() {
  
  const [menuOpen, setMenuOpen] = useState(false);

  const toggleMenu = () => {
    setMenuOpen(!menuOpen);
  };

  const enlaces = [
    { nombre: "Inicio", ruta: "/" },
    { nombre: "Local", ruta: "/local" },
    { nombre: "Regional", ruta: "/regional" },
    { nombre: "Nacional", ruta: "/nacional" },
    { nombre: "Internacional", ruta: "/internacional" },
    { nombre: "Archivo", ruta: "/archivo" },
  ];

  return (
    <nav className="bg-gray-600 text-white">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center justify-around h-16">
          <div className="flex-shrink-0">
            <Link to="/" className="text-2xl font-bold">El Noticioso</Link>
          </div>

          <div className="hidden md:flex space-x-8">
            {enlaces.map((enlace) => (
              <Link
                key={enlace.nombre}
                to={enlace.ruta}
                className="block px-3 py-2 rounded hover:bg-gray-500"
              >
                {enlace.nombre}
              </Link>
            ))}
          </div>

          <div className="md:hidden">
            <button onClick={toggleMenu} aria-label="Toggle menu">
              <svg
                className="h-6 w-6"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                {menuOpen ? (
                  <path d="M6 18L18 6M6 6l12 12" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
                ) : (
                  <path d="M4 6h16M4 12h16M4 18h16" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
                )}
              </svg>
            </button>
          </div>
        </div>
      </div>

      {/* Menú móvil */}
      <div className={`${menuOpen ? 'block' : 'hidden'} md:hidden bg-gray-700 px-2 pt-2 pb-3 space-y-1`}>
        {enlaces.map((enlace) => (
          <Link
            key={enlace.nombre}
            to={enlace.ruta}
            className="block px-3 py-2 rounded hover:bg-gray-500"
            onClick={() => setMenuOpen(false)}
          >
            {enlace.nombre}
          </Link>
        ))}
      </div>
    </nav>
  );
}
