package movie.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.SessionFactoryUtils;
import org.springframework.stereotype.Repository;

import movie.dao.BaseDAO;

@Repository
public class BaseDAOImpl implements BaseDAO {
	@Autowired
	protected SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}


	public Session getNewSession() {
		return sessionFactory.openSession();
	}

	public void flush() {
		getSession().flush();
	}

	public void clear() {
		getSession().clear();
	}


	@SuppressWarnings("rawtypes")
	public Object load(Class c, Integer id) {
		Session session = getSession();
		Object o = session.get(c, id);
	    session.flush();
	    session.clear();
		return o;
	}



	public List getAllList(Class c) {
		String hql = "from " + c.getName();
		Session session = getSession();
		return session.createQuery(hql).list();

	}



	public Long getTotalCount(Class c) {
		Session session = getNewSession();
		String hql = "select count(*) from " + c.getName();
		Long count = (Long) session.createQuery(hql).uniqueResult();
		session.close();
		return count != null ? count.longValue() : 0;
	}

	
	public Integer save(Object bean) {
		Integer id = null;
		try {
			Session session = getNewSession();
			id = (Integer)session.save(bean);
			session.flush();
			session.clear();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return id;
	}

	/** * ���� * * @param bean * */
	public void update(Object bean) {
		Session session = getNewSession();	
		session.update(bean);	
		session.flush();
		session.clear();

	}

	/** * ɾ�� * * @param bean * */
	public void delete(Object bean) {

		Session session = getNewSession();
		session.delete(bean);
		session.flush();
		session.clear();
	}


	@SuppressWarnings({ "rawtypes" })
	public void delete(Class c, String id) {
		Session session = getNewSession();
		Object obj = session.get(c, id);
		session.delete(obj);
		flush();
		clear();
	}


	@SuppressWarnings({ "rawtypes" })
	public void delete(Class c, String[] ids) {
		for (String id : ids) {
			Object obj = getSession().get(c, id);
			if (obj != null) {
				getSession().delete(obj);
			}
		}
	}
}
