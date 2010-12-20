package app.repositories;

import java.util.List;
import javax.persistence.EntityManager;

import br.com.caelum.vraptor.ioc.Component;
import app.models.Codeshare;
import javax.persistence.Query;

@Component
public class CodeshareRepositoryImpl 
    extends Repository<Codeshare, Long>
    implements CodeshareRepository {

	public CodeshareRepositoryImpl(EntityManager entityManager) {
		super(entityManager);
	}

	@SuppressWarnings("unchecked")
       @Override
       public List<Codeshare> findTag(String tag) {
               String t = "%"+ tag + "%";
               Query q = entityManager.createQuery("From Codeshare " + "where tags like :tag" );
               q.setParameter("tag", t);  
       return  (List<Codeshare>)q.getResultList();



       }
 
}
