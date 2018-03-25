package db;

import java.sql.*;

public class Admin 
{
   static Connection connect() throws Exception
   {
       Class.forName("oracle.jdbc.driver.OracleDriver");
       return DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","amitji","gzb");
   }
   public static String addUser(String uid,String pass)
   {
      try
      {
          CallableStatement cs = connect().prepareCall("{call addUser(?,?,?)}");
          cs.setString(1, uid);
          cs.setString(2, pass);
          cs.registerOutParameter(3,Types.VARCHAR);
          cs.execute();
          return cs.getString(3);
      }catch(Exception ex) { return "Sorry exception is - "+ex.getMessage();}
   }
   public static String addUser(String uid,String name,String fname,String sex,String mailid,String mobile,String dob,String addr,String quali,String pin)
   {
      try
      {
          CallableStatement cs = connect().prepareCall("{call addUser(?,?,?,?,?,?,?,?,?,?,?)}");
          cs.setString(1, uid);
          cs.setString(2, name);
          cs.setString(3, fname);
          cs.setString(4, sex);
          cs.setString(5, mailid);
          cs.setString(6, mobile);
          cs.setString(7, dob);
          cs.setString(8, addr);
          cs.setString(9, quali);
          cs.setString(10, pin);
          cs.registerOutParameter(11,Types.VARCHAR);
          cs.execute();
          return cs.getString(11);
      }catch(Exception ex) { return "Sorry exception is - "+ex.getMessage();}
   }
}
