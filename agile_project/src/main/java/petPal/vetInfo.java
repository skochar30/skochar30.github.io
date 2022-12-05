package petPal;

import org.json.JSONArray;
import org.json.JSONObject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class vetInfo {

    private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/petpals";
    //System.getenv("MYSQL_URL");

    /**
     * Username and password.
     */
    private static final String DB_USER = "root";
    //System.getenv("MYSQL_USERNAME");
    private static final String DB_PWD = "password";
    //System.getenv("MYSQL_PASSWORD");

    private static Connection initializeConnection() {
        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(URL, DB_USER, DB_PWD);
            return conn;
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }

    }    /**
     * The connection (session) with the database.
     */
    private static Connection conn = initializeConnection();

    public String getListofVets(String city) {

        try {

            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM" +
                    " ER_INFO WHERE City = ? ");
            pstmt.setString(1, city);
            ResultSet resultSet = pstmt.executeQuery();

            JSONArray jsonArray = new JSONArray();
            while (resultSet.next()) {
                JSONObject vet = new JSONObject();
                vet.put("Hospital_Name", resultSet.getString("Hospital_Name"));
                vet.put("latitude", resultSet.getString("latitude"));
                vet.put("Address", resultSet.getString("Address"));
                vet.put("longitude", resultSet.getString("longitude"));
                vet.put("city", resultSet.getString("city"));
                vet.put("insurance", resultSet.getString("insurance"));
                vet.put("Number_of_Beds", resultSet.getString("Number_of_Beds"
                ));
                vet.put("ER_availability", resultSet.getString(
                        "ER_availability"));
                vet.put("Contact_Number", resultSet.getString("Contact_Number"
                ));
                vet.put("Website", resultSet.getString("Website"));
                jsonArray.put(vet);
            }
            resultSet.close();
            pstmt.close();
            JSONObject result = new JSONObject();
            result.put("result", jsonArray);
            return result.toString();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }



}
