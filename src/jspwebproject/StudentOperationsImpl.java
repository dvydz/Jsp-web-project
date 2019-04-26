package jspwebproject;

import java.sql.Connection;
import java.sql.DriverManager;						//Why did we create this class, can we not connect jdbc directly to jsp?
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class StudentOperationsImpl {
	public static PreparedStatement pst,pst1,pst2,pst3,pstt,pst4,pst5,pst6;
	static
	{
		try(Scanner scanner=new Scanner(System.in)) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/java", "root", "AlvaOklahoma");
			pst=con.prepareStatement("select emailid from userid where emailId=? and password=?");
			pst1=con.prepareStatement("insert into student values(?,?,?,?)");
			pstt=con.prepareStatement("select sId from student");
			pst2=con.prepareStatement("delete from student where sId=?");
			pst3=con.prepareStatement("update student set course=?,fee=? where sId=?");
			pst4=con.prepareStatement("select * from student");
			pst5=con.prepareStatement("select * from student where sId=?");
			pst6=con.prepareStatement("update userid set password=? where emailId=?");
			}
			catch(ClassNotFoundException | SQLException ex)
			{
				ex.getStackTrace();
			}
	}
	
	public static String userValidation(String emailId, String password)
	{
		String status="Failure";
		try {
		pst.setString(1,emailId);
		pst.setString(2, password);
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		{
			status="Success";
		}
		}
		catch(SQLException ex)
		{
			ex.getStackTrace();
		}
		return status;
	}
	
	public static int UpdatePassword(String pwd,String email)
	{
		int result=0;
		try {
			pst6.setString(1, pwd);
			pst6.setString(2, email);
			result=pst6.executeUpdate();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return result;	
	}
	
	public static int AddStudent(String sId,String sName,String sCourse,String sFees)
	{
		int result=0;
		try {
			pst1.setInt(1, Integer.parseInt(sId));
			pst1.setString(2, sName);
			pst1.setString(3, sCourse);
			pst1.setFloat(4, Float.parseFloat(sFees));
			result=pst1.executeUpdate();
		} 
		catch (NumberFormatException | SQLException e) {
			e.printStackTrace();
		} 
		
		return result;
	}
	
	public static List<Integer> GetStudentIds()
	{
		List<Integer> list=new ArrayList<Integer>();
		try {
			ResultSet rs=pstt.executeQuery();
			while(rs.next())
			{
				list.add(rs.getInt(1));
			}
		} 
		catch (SQLException e) {
			
			e.printStackTrace();
		}	
		return list;
	}
	
	public static int DeleteStudent(String sId)
	{
		int result=0;
		try {
			pst2.setInt(1, Integer.parseInt(sId));
			result=pst2.executeUpdate();
		}
		catch (NumberFormatException | SQLException e) {
			e.printStackTrace();
		} 
		return result;
	}
	
	public static int UpdateStudent(String sId,String sCourse,String sFees)
	{
		int result=0;
		try {
		pst3.setString(1,sCourse);
		pst3.setString(2,sFees);
		pst3.setInt(3, Integer.parseInt(sId));
		result=pst3.executeUpdate();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static String DisplayAllStudents()
	{
		String responseText="";
		try {
			ResultSet rs=pst4.executeQuery();
			ResultSetMetaData md=rs.getMetaData();
			responseText=responseText.concat("<table border=2 width=60% cellspacing=0 align=center>");
			for(int i=1;i<md.getColumnCount();i++)    //always start metadata and rs with index 1
			{
				responseText=responseText.concat("<th style='background-color:cyan width=75%'>"+md.getColumnName(i)+"</th>");
			}
			while(rs.next())
			{	
				responseText=responseText.concat("<tr style='background-color:yellow'>");
				for(int i=1;i<md.getColumnCount();i++)
				{
					responseText=responseText.concat("<td align=center >"+rs.getString(i)+"</td>");
				}
				responseText=responseText.concat("</tr>");
			}
			responseText=responseText.concat("</table>");
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(responseText);
		return responseText;
		
	}
	
	public static String DisplayStudent(String sId)
	{	
		String responseText="";
		try {
			pst5.setInt(1, Integer.parseInt(sId));
			ResultSet rs=pst5.executeQuery();
			ResultSetMetaData md=rs.getMetaData();
			responseText=responseText.concat("<table cellspacing=0 align=center border=2 width=60%>");
			for(int i=1;i<md.getColumnCount();i++)
			{
				responseText=responseText.concat("<th>"+md.getColumnName(i)+"</th>");
			}
			while(rs.next())
			{
				responseText=responseText.concat("<tr style='background-color:yellow'>");
				for(int i=1;i<md.getColumnCount();i++)
				{
				responseText=responseText.concat("<td align=center>"+rs.getString(i)+"</td>");	
				}
				responseText=responseText.concat("</tr>");
			}
			responseText=responseText.concat("</table>");
		} 
		catch (NumberFormatException | SQLException e) {
			e.printStackTrace();
		}
		return responseText;
	}

}
