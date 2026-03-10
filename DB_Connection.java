package giftcards;
import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Connection {

   public static Connection getConnection() {

	        try {
	            Connection con = DriverManager.getConnection(
	                "jdbc:mysql://localhost:3306/giftcard_shop",
	                "root",
	                "Panchu@3404"
	            );

	            System.out.println("Connected Successfully!");
	            return con;

	        } catch (Exception e) {
	            System.out.println(e);
	        }

	        return null;
	    }
}