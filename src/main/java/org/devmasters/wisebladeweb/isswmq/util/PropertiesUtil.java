package org.devmasters.wisebladeweb.isswmq.util;

import lombok.experimental.UtilityClass;

import java.io.IOException;
import java.util.Properties;

@UtilityClass
public class PropertiesUtil {

    private static final Properties PROPERTIES  = new Properties();

    static {
        loadProperties();
    }

    private static void loadProperties(){
        try (var inputStream = PropertiesUtil.class.getClassLoader().getResourceAsStream("application.properties")){
            if(inputStream == null){
                throw new RuntimeException("Unable to load application.properties file");
            }
            PROPERTIES.load(inputStream);
        }catch (IOException exception){
            throw new RuntimeException();
        }
    }

    public static String get(String key){
        return PROPERTIES.getProperty(key);
    }
}
