package ru.fedrbodr.restparams.db;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by Dmitry Fedorenko (fedrbodr@gmail.com) on 30/10/14.
 */
public class DbUtil {
    private DataSource dataSource;

    public DataSource getDataSource() {
        return dataSource;
    }

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }


}
