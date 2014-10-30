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

    public void insert(Parameters parameters){
        Session session = getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(parameters);
        session.getTransaction().commit();

    }

    public Parameters select(Long id){
        Session session = getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Parameters param = (Parameters)session.byId(id.toString());
        session.getTransaction().commit();
        return param;
    }

    public List<Parameters> selectAll(){
        Session session = getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Parameters.class);
        List<Parameters> persons = (List<Parameters>)criteria.list();
        session.getTransaction().commit();
        return persons;
    }


}
