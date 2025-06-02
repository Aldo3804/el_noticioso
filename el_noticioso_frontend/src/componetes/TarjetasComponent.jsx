
import { Tarjeta } from "./extras/Tarjeta"

export function TarjetasComponent() {
    return(
        <div className="flex flex-col sm:flex-row gap-10 pt-5 max-w-[1200px] mx-auto">
                <Tarjeta titulo="Nuestro Propósito" contenido="En nuestra página nos comprometemos a ofrecer noticias veraces, oportunas y relevantes para mantenerte informado de lo que realmente importa." />
                <Tarjeta titulo="Efemérides" contenido="" />
        </div>
    )
}