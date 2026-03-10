package giftcards;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;

public class GiftCard {
	
	public void addCard(String name, double price) {
	        try {

	            Connection con = DB_Connection.getConnection();
	            LocalDate today = LocalDate.now();
	            String query = "INSERT INTO giftcards(name, price,date) VALUES (?, ?,?)";
	            
 	            PreparedStatement ps = con.prepareStatement(query);
 	            
	            ps.setString(1, name);
	            ps.setDouble(2, price);
	            ps.setDate(3, java.sql.Date.valueOf(today));
	            
	            ps.executeUpdate();

	            System.out.println("Gift Card Added Successfully!");     
	            
	                    // BILL PRINT
	                    System.out.println("\n------ Gift Card Bill ------");
	                    System.out.println("Type of Card : " + name);
	                    System.out.println("Amount       : " + price);
	                    System.out.println("Date        : " + today);
	                    System.out.println("-----------------------------");
	                    System.out.println("Total Bill   : " + price);
	                    System.out.println("Thank You!\n");

	                } catch (Exception e) {
	                    e.printStackTrace();
	                }
	            }
	   
    // VIEW ALL CARDS
    public void viewCards() {

        try {

            Connection con = DB_Connection.getConnection();

            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("SELECT * FROM giftcards");

            while(rs.next()) {

                int id = rs.getInt("id");
                String name = rs.getString("name");
                double amount = rs.getDouble("price");
                String date = rs.getString("date");

                System.out.println("--------------------------------");
                System.out.println("ID        : " + id);
                System.out.println("Card Type : " + name);
                System.out.println("Amount    : " + amount);
                System.out.println("Date      : " + date);
                System.out.println("--------------------------------");
            }

        } catch(Exception e) {
            e.printStackTrace();
        }
    }
    public void deleteCard(int id) {
        try {
            Connection con = DB_Connection.getConnection();

            String query = "DELETE FROM giftcards WHERE id=?";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);

            int rows = ps.executeUpdate();

            if(rows > 0) {
                System.out.println("Gift Card Deleted Successfully!");
            } else {
                System.out.println("ID not found!");
            }

        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}
