
import { AsideComponent } from "./AsideComponent";
import { ListaNoticias } from "./ListaNoticias";

export function CuerpoComponent() {
  return (
    <>
      <article className="grid grid-cols-1 md:grid-cols-3 gap-8 mt-10 items-start">
        <ListaNoticias localia={null} /> 
        <AsideComponent className="sticky top-10 self-start" />
      </article>
    </>
  );
}
