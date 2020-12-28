package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.Todb;

public class employeeDaoImp  implements EmployeeDao {

	Todb t = new Todb();
	Connection conn = t.getc();
	ResultSet rs=null;
	@Override
	public List<employee> selall() throws SQLException{
			String sql="select * from employee";
			ArrayList<employee> list = new ArrayList<employee>();
			PreparedStatement ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				employee e= new employee();
				e.setId(rs.getString("id"));
				e.setName(rs.getString("name"));
				e.setSex(rs.getString("sex"));
				e.setSalary(rs.getInt("salary"));
				e.setTitle(rs.getString("title"));
				list.add(e);
			}
			return list;
		
	}

	@Override
	public int addem(employee e) {
		int i=0;
		String sql="insert into employee values (?,?,?,?,?)";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, e.getId());
			ps.setString(2, e.getName());
			ps.setString(3, e.getSex());
			ps.setInt(4, e.getSalary());
			ps.setString(5, e.getTitle());
			i=ps.executeUpdate();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return i;
	}
	

	@Override
	public int upem(employee e) {
		int i=0;
		String sql="update employee set name=?,sex=?,salary=?,title=? where id = ?";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, e.getName());
			ps.setString(2, e.getSex());
			ps.setInt(3, e.getSalary());
			ps.setString(4, e.getTitle());
			ps.setString(5, e.getId());
			i=ps.executeUpdate();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return i;
	}

	@Override
	public int delem(employee e) {
		int i=0;
		String sql="delete from employee where id =?";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, e.getId());
			i=ps.executeUpdate();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return i;
	}

}
