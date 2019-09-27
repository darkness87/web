package com.human.finalpjt.dao;

import java.util.ArrayList;

import com.human.finalpjt.dto.InterDto;
import com.human.finalpjt.dto.scheduleDto;
import com.human.finalpjt.dto.searchdto;

public interface InterDao {
	public ArrayList<InterDto> Interlist();
	
	public ArrayList<InterDto> viewDao(String p_id);
	
	public searchdto searchDao(String p_id);
	
	public void InsertDao(String s_id, String s_name, String c_name, String s_major);
	
	public ArrayList<scheduleDto> schlist();
	   
	public void schInsert(String sch_fromdate, String sch_todate, String sch_content);
	
	public int count();
}
