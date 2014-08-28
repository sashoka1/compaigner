package com.saInfosoft.compaigner.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
 
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.saInfosoft.compaigner.entity.GroupAdd;
import com.saInfosoft.compaigner.entity.MemberAdd;

@Repository
public class MemberDaoImpl implements com.saInfosoft.compaigner.dao.MemberDao {

    @Autowired
    SessionFactory sessionFactory;

    public List<GroupAdd> dropDownFetch() {
        Session session = sessionFactory.openSession();
        Transaction t = session.beginTransaction();
        Query query = session.createQuery("from GroupAdd");
        List<GroupAdd> list = query.list();
        t.commit();
        session.close();
        System.out.println("Successfully memberAddFrom dropDown list is initilized.......");
        return list;
    }

    public void save(MemberAdd member) {
        Session session = sessionFactory.openSession();
        Transaction t = session.beginTransaction();
        session.save(member);
        t.commit();
        session.close();
        System.out.println("Member Successfully Saved .......");
    }

    public List<MemberAdd> view() {
        Session session =sessionFactory.openSession();
        Transaction t = session.beginTransaction();
        Query query = session.createQuery("from MemberAdd");
        List<MemberAdd> list = query.list();
        t.commit();
        session.close();
        System.out.println("Member Successfully Fetched .......");
        return list;
    }

    
}
