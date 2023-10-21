package org.isswmq.wisebladehibernate;

import lombok.Cleanup;
import org.hibernate.SessionFactory;
import org.isswmq.wisebladehibernate.entity.User;
import org.isswmq.wisebladehibernate.util.HibernateUtil;

import javax.persistence.LockModeType;
import java.sql.SQLException;

public class HibernateRunner {
    public static void main(String[] args) throws SQLException {
        @Cleanup var sessionFactory = HibernateUtil.buildSessionFactory();
        @Cleanup var session = sessionFactory.openSession();

        session.beginTransaction();

        User user = User.builder()
                .name("isswmq")
                .email("isswmq@gmail.com")
                .password("123123")
                .build();

        session.save(user);

        session.getTransaction().commit();
    }
}
