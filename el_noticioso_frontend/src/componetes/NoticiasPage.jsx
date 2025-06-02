import { useParams } from 'react-router-dom';
import { ListaNoticias } from './ListaNoticias';
import { AsideComponent } from './AsideComponent';

export function NoticiasPage() {
  const { categoria } = useParams();

  return (
    <>
      <article className="grid grid-cols-1 md:grid-cols-3 gap-8 mt-10 items-start">
        <ListaNoticias localia={categoria} />
        <AsideComponent className="sticky top-10 self-start" />
      </article>
    </>
  );
}
