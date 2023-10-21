package org.isswmq.wisebladehibernate.util;


import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.testcontainers.containers.PostgreSQLContainer;

public class HibernateTestUtil {

    public static final PostgreSQLContainer<?> postgres = new PostgreSQLContainer<>("postgres:14");

    static {
        postgres.start();
    }

    public SessionFactory buildTestSessionFactory(){
        Configuration configuration = HibernateUtil.buildConfiguration();
        configuration.setProperty("hibernate.connection.url", postgres.getJdbcUrl());
        configuration.setProperty("hibernate.connection.username", postgres.getUsername());
        configuration.setProperty("hibernate.connection.password", postgres.getPassword());
        configuration.configure();

        return configuration.buildSessionFactory();
    }
}
