package dao;

import java.sql.SQLException;
import java.util.List;

public interface EmployeeDao {
	//²é
	public List<employee> selall() throws SQLException;
	//Ôö
	public int addem(employee e) throws SQLException;;
	//¸Ä
	public int upem(employee e) throws SQLException;;
	//É¾
	public int delem(employee e) throws SQLException;;
}
