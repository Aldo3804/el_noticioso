import './App.css';
import { CabezeraComponent } from './componetes/CabezeraComponent';
import { NavegadorComponent } from './componetes/NavegadorComponent';
import { CuerpoComponent } from './componetes/CuerpoComponent';
import { FooterComponent } from './componetes/FooterComponent';
import { NoticiasPage } from './componetes/NoticiasPage'; // <- Corregido
import { Routes, Route } from 'react-router-dom';
import { TarjetasComponent } from './componetes/TarjetasComponent';

function App() {
  return (
    <>
      <CabezeraComponent />
      <NavegadorComponent />

      <main className="max-w-[1200px] mx-auto px-4 bg-white">
        <TarjetasComponent />
        <Routes>
          <Route path="/" element={<CuerpoComponent />} />
          <Route path="/:categoria" element={<NoticiasPage />} />
        </Routes>

      </main>



      <FooterComponent />
    </>
  );
}

export default App;
