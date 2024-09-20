package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Specialist;

import java.io.*;
public class SpecialistDao {
    private Connection conn;

    public SpecialistDao(Connection conn) {
        this.conn = conn;
    }

    public boolean addSpecialist(String spec) {
        boolean f = false;
        try {
            String query = "INSERT INTO specialist (spec_name) VALUES (?)";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, spec);
            int i = pstmt.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            System.out.println("Error is:"+e);
            
        }
        return f;
    }
    
    public List<Specialist> getAllSpecialist()
    {
    	List<Specialist> list=new ArrayList<Specialist>();
    	Specialist s=null;
    	
    	try
    	{
    		String sql="select * from specialist";
    		PreparedStatement ps=conn.prepareStatement(sql);
    		ResultSet rs=ps.executeQuery();
    		while(rs.next())
    		{
    			s=new Specialist();
    			s.setId(rs.getInt(1));
    			s.setSpecialistName(rs.getString(2));
    			list.add(s);
    		}
    	}
    	catch(Exception e)
    	{
    		System.out.println("Error is:"+e);
    	}
    	return list;
    }
}

