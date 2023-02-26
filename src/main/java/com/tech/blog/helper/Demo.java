package com.tech.blog.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Demo{

public static void main(String[] args) throws Exception{

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","akash");
Statement st=con.createStatement();



//st.executeUpdate("create table pratik(name varchar(10),salary number)");
st.executeUpdate("insert into pratik values('akash', 7800)");

System.out.println("table created successfully");
con.close();
}
}