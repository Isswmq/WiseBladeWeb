package org.isswmq.wisebladehibernate.util;

import lombok.experimental.UtilityClass;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.isswmq.wisebladehibernate.entity.User;

import java.net.UnknownServiceException;

@UtilityClass
public class HibernateUtil {

    public static SessionFactory buildSessionFactory(){
        Configuration configuration = buildConfiguration();
        configuration.configure();
        return configuration.buildSessionFactory();
    }

    public static Configuration buildConfiguration(){
        Configuration configuration = new Configuration();
        configuration.addAnnotatedClass(User.class);
        return configuration;
    }
}
