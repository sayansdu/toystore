package connection;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class SessionFactory {

        public static SqlSessionFactory getSessionFactory() {
            String path = "mybatis-config.xml";
            InputStream input = null;
            try {
                input = Resources.getResourceAsStream(path);
            } catch (IOException e) {
                e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            }
            return (new SqlSessionFactoryBuilder().build(input));
        }
}
