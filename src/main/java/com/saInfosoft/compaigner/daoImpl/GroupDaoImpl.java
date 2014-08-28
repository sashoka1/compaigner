package com.saInfosoft.compaigner.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.saInfosoft.compaigner.entity.GroupAdd;

@Repository
public class GroupDaoImpl implements com.saInfosoft.compaigner.dao.GroupDao {

    @Autowired
    SessionFactory sessionFactory;

    public void save(GroupAdd group) {
        Session session = sessionFactory.openSession();
        Transaction t = session.beginTransaction();
        session.save(group);
        t.commit();
        session.close();
        System.out.println("Successfully Saved .......");
    }

    public List<GroupAdd> view() {
        Session session = sessionFactory.openSession();
        Transaction t = session.beginTransaction();
        Query query = session.createQuery("from GroupAdd");
        List<GroupAdd> list = query.list();
        t.commit();
        session.close();
        System.out.println("Successfully Fetched .......");
        return list;
    }

    public List<GroupAdd> deleteView() {
        Session session = sessionFactory.openSession();
        Transaction t = session.beginTransaction();
        Query query = session.createQuery("from GroupAdd");
        List<GroupAdd> list = query.list();
        t.commit();
        session.close();
        System.out.println("Successfully delete view Fetched .......");
        return list;
    }

    public List<GroupAdd> delete(String[] ids) {
        Session session = sessionFactory.openSession();
        Transaction t = session.beginTransaction();
        for (String id : ids) {
            GroupAdd group = (GroupAdd) session.load(GroupAdd.class, Integer.parseInt(id));
            session.delete(group);
        }
        t.commit();
        session.close();
        List<GroupAdd> list = deleteView();
        System.out.println("Successfully delete Record .......");
        return list;
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

}
