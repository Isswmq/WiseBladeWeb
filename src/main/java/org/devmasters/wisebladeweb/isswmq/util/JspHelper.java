package org.devmasters.wisebladeweb.isswmq.util;


import lombok.experimental.UtilityClass;

@UtilityClass
public class JspHelper {
    private static final String path = "/WEB-INF/jsp/%s.jsp";

    public static String getPath(String name){
        return path.formatted(name);
    }
}
