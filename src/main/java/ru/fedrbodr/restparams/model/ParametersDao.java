package ru.fedrbodr.restparams.model;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

/**
 * Created by Dmitry Fedorenko (fedrbodr@gmail.com) on 30/10/14.
 */
public class ParametersDao {
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    public void initInsert(Parameters parameters){
        Session session = getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.saveOrUpdate(parameters);
        session.getTransaction().commit();

    }

    public void insert(Parameters parameters){
        Session session = getSessionFactory().getCurrentSession();
        session.getTransaction().begin();
        session.update(parameters);
        session.getTransaction().commit();

    }

    public Parameters select(Long id){
        Session session = getSessionFactory().getCurrentSession();
        session.getTransaction().begin();
        Parameters param = (Parameters) session.get(Parameters.class, id);
        session.getTransaction().commit();
        return param;
    }

    public List<Parameters> selectAll(){
        Session session = getSessionFactory().getCurrentSession();
        session.getTransaction().begin();
        Criteria criteria = session.createCriteria(Parameters.class);
        Object sqlResult = criteria.list();
        session.getTransaction().commit();

        List<Parameters> params = null;
        if(sqlResult instanceof List) {
            params = (List)sqlResult;
        }

        return params;
    }

}
